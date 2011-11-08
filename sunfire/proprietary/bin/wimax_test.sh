##################################################################
# Environment:
# 
# The script expects the phone to be able to connect -- that is,
# to have at least one tower with a strong enough signal to connect.
# It's not a reportable software fault if there's no tower.  It ~is~
# a software fault if there is/are tower[s] but the phone fails to 
# detect them or to connect to them.
#
# The script does not change the user_identity of the phone, nor can it.
# Thus, it's expected that the phone's user_identity be correct.  Just
# the act of bringing up wimax should set the user identity correctly 
# UNLESS an invalid user_identity has been pushed, as it may be in the
# case where the phone's OMA parameters have been altered during a test.
# If this is the case, you'll need to correct the user_identity before
# a connection can be made that will pass data.
#
# The user should have a Windows-based machine with a USB connection
# capable of supporting ADB shell access to the phone.
# 
# 
# Usage:
# From a production user-build phone, you'll need to have the sqlite3
# command-line utility 
# and busybox available to temporarily load onto the phone, preferably
# via a batch file from a host running adb.
#
# The phone will need to be rooted, so you will probably  have to root it, 
# run the test, then un-root the phone to restore it to its normal 
# state. The utilities needed to root and unroot the phone should be 
# in the package with this script.
#
# You'll need to have the phone with 'debug' enabled 
# (settings/applications/development/usb debugging)
# 
# The batch file that runs the test should read something like:
# adb push sqlite3 /tmp/sqlite3
# adb shell "chmod 755 /tmp/sqlite3"
# adb push busybox /tmp/busybox
# adb shell "chmod 755 /tmp/busybox"
# adb shell /system/bin/wimax_test.sh -s /tmp -b /tmp -w /tmp -i <number of iterations>
#
# where -s specifies the sqlite3 executable with its path
#       -b specifies the busybox executable with its path
#       -w specifies a writable directory on the device where soft links to 
#          busybox can be created and where the logfiles and database can be written
#
# If you don't specify these paths, the script will look for busybox in /system/bin and expect sqlite3 
# in /system/xbin, both of which are in the $PATH.
#
#
# Important note: ADB Shell is sensitive to a dos-ish end-of-line
#  (i.e. CRLF, or 0x0d 0x0a).  It insists on UNIX style, LF only (0x0a).
#  It will give you mysterious 'not found' errors, and probably
#  say it's expecting a 'then' or a closing brace that (seems) present.
#
#  If you're editing the script and afterward pushing it to the device, you should  
#  run busybox dos2unix on the shell script
#  before trying to run it.  And, since busybox dos2unix
#  sets file permissions to 600 (owner rw only), you'll
#  need to set the executable bit on the
#  script AFTER you run dos2unix on it.
#
#  I'd suggest scripting the push to the box:
#  adb push script dest
#  adb shell "busybox dos2unix script"
#  adb shell "chmod 755 script"
#
#  Here's an outline of the tests that this script runs on the device:
#
#  Set the system to a known state to start:
#
#       Check if the interfaces are up
#       -- tear them down if they are
#       Check if the modules are loaded
#       -- remove them if they are
#
#  Load the modules needed & verify
#  Start the wimax daemon & verify
#  Find some base station to connect to
#  Start the dhcpcd daemon & verify
#  Connect
#  Verify the IP address assignment
#  Try a ping across the data connection
#  Try pulling some data across the connection to simulate web browsing
#
#  When the number of tests requested has finished:
#  Tear down and clean up
#  Present a report
#
#
# The command sequence:
#
# insmod /system/lib/bcmsdio.ko
# insmod /system/lib/bcmwimax.ko fw_dir=/system/etc/wimax intf_name=wimax0
# wimaxd -c /system/etc/wimax/wimaxd.conf &
# ifconfig wimax0 up
# wimaxc search
# wimaxc connect
# start wimaxdhcpcd
# ping -I wimax0 www.google.com
#
# How to insert results of scan into database:
# cat /tmp/temp_file | sed -ne '/^ [0-9]/p'| awk '{print "\"" $1 "\",\""  $2 "\", \"" $3 "\",\" ""}'
# "0","01:01:00:00:02:1e:09:64", "0x04","2541.500,"10.000","-84"
# "1","01:01:00:00:02:1e:29:66", "0x2F","2650.500,"10.000","-81"
#
#
#
#
############################################################
# set -x # use the -x option in the script's command line

SCRIPT_VERSION=2
SEQ_NUM=1
TEST_NUM=0
NUM_TESTS=1
ERRORS=0
FATAL_ERRORS=0
WARNINGS=0
BEST_IDX=-1
FTP_GET_TEST=0
HTTP_GET_TEST=1
PING_TEST=0
NO_TEARDOWN=0
ON_PHONE=0
PING_ADDRESS="www.google.com"
STARTUP_ONLY=0
DEVELOPMENT_TEST=0
PRINT_DEBUG=0

WRITE_DIR="/tmp"
TEMP_DIR=$WRITE_DIR
LOGFILE="$TEMP_DIR/wimax_log_logfile"
DB="$TEMP_DIR/WiMAX_test_db"  # A slight variant on the name so this isn't deleted during standard cleanup
TEMP_FILE="$TEMP_DIR/wimax_log_temp_file.txt"
PTRF="$TEMP_DIR/wimax_log_ping_test.txt" # ping test results file
FTPGTRF="$TEMP_DIR/wimax_log_ftp_get_test.txt" # ftp test results file
HTTPFILE="$TEMP_DIR/wimax_log_http_get_test.txt" # http test results file
IFCONF="$TEMP_DIR/wimax_log_if_conf_work_file" # ifconfig analysis file

SQLITE_HOME="/system/xbin"
SQLITE3="$SQLITE_HOME/sqlite3"
BUSYBOX_HOME="/system/bin"
BUSYBOX="$BUSYBOX_HOME/busybox"
NEEDED_UTILS="touch rm grep wc killall ping tail head sed cut awk sort wget time tee" 

# FTP_FILE="ftp://ftp.croco.net/pub/software/Owl/LAMP/README"  # 1062 bytes
# FTP_FILE="ftp://ftp.croco.net/pub/software/Owl/LAMP/gd-2.0.34-g1.i686.rpm" # 200635 bytes
FTP_FILE="ftp://ftp.croco.net/pub/software/croco/inifile/inifile-0.2.00.tgz"  # 14613 bytes
FTP_TARGET="$TEMP_DIR/wimax_log_ftp_test_rx_file"
HTTP_TARGET="$TEMP_DIR/wimax_log_http_test_rx_file"  
HTTP_SOURCE="http://www.google.com"

# A file to hold all the temporary files starting with wimax_* so it can be retrieved easily
TEXT_AGGREGATE=$TEMP_DIR/WiMAX_Aggregate.txt

# confirm_setup() {
#     cat <<-End_Of_Setup_Message
#         NUM_TESTS = $NUM_TESTS
#    End_Of_Setup_Message
# }

# confirm_setup() {
#     for D in NUM_TESTS PING_ADDRESS
#     do
#     echo $D: ${$D}
#     done
# }

setup() {
    while getopts a:ow:g:b:s:rdxsp:hi:t: opt
    do
        case $opt in
            a)   HTTP_GET_TEST=$OPTARG;;
            b)   BUSYBOX_HOME=$OPTARG;
                 BUSYBOX="$BUSYBOX_HOME/busybox";;
            d)   PRINT_DEBUG=1;;
            g)   FTP_GET_TEST=$OPTARG;;
            h)   usage; exit 0;;
            i)   NUM_TESTS=$OPTARG;;
            o)   STARTUP_ONLY=1;;
            p)   PING_ADDRESS=$OPTARG;;
            r)   NO_TEARDOWN=1;;
            s)   SQLITE_HOME=$OPTARG;
                 SQLITE3="$SQLITE_HOME/sqlite3";;
            t)   PING_TEST=$OPTARG;;
            v)   DEVELOPMENT_TEST=1;;
            w)   WRITE_DIR=$OPTARG
                 TEMP_DIR=$WRITE_DIR
                 LOGFILE="$TEMP_DIR/wimax_log_logfile"
                 DB="$TEMP_DIR/WiMAX_test_db"
                 TEMP_FILE="$TEMP_DIR/wimax_log_temp_file.txt"
                 PTRF="$TEMP_DIR/wimax_log_ping_test.txt" # ping test results file
                 FTPGTRF="$TEMP_DIR/wimax_log_ftp_get_test.txt" # ftp test results file
                 HTTPFILE="$TEMP_DIR/wimax_log_http_get_test.txt" # http test results file
                 FTP_TARGET="$TEMP_DIR/wimax_log_ftp_test_rx_file"
                 HTTP_TARGET="$TEMP_DIR/wimax_log_http_test_rx_file"  
                 TEXT_AGGREGATE=$TEMP_DIR/WiMAX_Aggregate.txt
                 IFCONF="$TEMP_DIR/wimax_log_if_conf_work_file" # ifconfig analysis file
                 ;;
            x)   set -x ;;
            *)   echo "Unknown option $opt";;
        esac
    done
    confirm_setup

    # Get the appropriate busybox utilities soft-linked
    setup_env

    # This cannot be done on a production user build; the /data/system directory is not readable by the
    # shell user.
    # $SQLITE3 -line /data/system/wimax_oma_dm.db "select * from wimax_misc_config;"


}

confirm_setup() {
    local FATAL=0

    if [ ! -w "$WRITE_DIR" ]; then
        echo "$WRITE_DIR is not writable"
        log_error "$WRITE_DIR is not writable"
        FATAL=1
    fi
    if [ ! -r "$WRITE_DIR" ]; then
        echo "$WRITE_DIR is not readable"
        log_error "$WRITE_DIR is not readable"
        FATAL=1
    fi

    if [ ! -e "$SQLITE3" ]; then
         echo "$SQLITE3 does not exist"
         log_error "$SQLITE3 does not exist"
         FATAL=1
    fi
    if [ ! -x "$SQLITE3" ]; then 
         echo "$SQLITE3 is not executable: changing"
         log_warning "$SQLITE3 not executable"
         chmod 755 $SQLITE3
         if [ ! -x "$SQLITE3" ]; then 
            echo "Unable to make $SQLITE executable: Fatal"
            log_error "Unable to make $SQLITE executable"
            FATAL=1
        fi
    fi

    if [ ! -e "$BUSYBOX" ]; then
        echo "$BUSYBOX does not exist"
        log_error "$BUSYBOX does not exist"
        FATAL=1
    fi

    if [ ! -x "$BUSYBOX" ]; then
        echo "$BUSYBOX is not executable: changing"
        log_warning "$BUSYBOX is not executable"
        chmod 755 $BUSYBOX
        if [ ! -x "$BUSYBOX" ]; then
            echo "Unable to make $SQLITE executable: Fatal"
            log_error "Unable to make $SQLITE executable"
            FATAL=1
        fi
    fi

    if [ $FATAL -ne 0 ]; then
          "Fatal setup problem"
          exit $FATAL 
    fi

    # We have to get the test sequence here since it relies on the database
    get_test_sequence
    LOGFILE=$LOGFILE.$SEQ_NUM

    echo "
    Script version $SCRIPT_VERSION

    Test sequence setup:
    SEQUENCE_NUM     = $SEQ_NUM
    NUM_TESTS        = $NUM_TESTS

    Settings:
    PING_TEST        = $PING_TEST
    STARTUP_ONLY     = $STARTUP_ONLY
    NO_TEARDOWN      = $NO_TEARDOWN
    FTP_GET_TEST     = $FTP_GET_TEST
    HTTP_GET_TEST    = $HTTP_GET_TEST
    DEVELOPMENT_TEST = $DEVELOPMENT_TEST
    DEBUG_PRINT      = $PRINT_DEBUG
    LOGFILE          = $LOGFILE
    User_id          = `$SQLITE3 /data/system/wimax_oma_dm.db "select user_identity from subscription_eap;"`

    Data addresses:
    PING_ADDRESS     = $PING_ADDRESS
    FTP Host         = $FTP_FILE
    HTTP Source      = $HTTP_SOURCE

    Utilities:
    SQLITE_HOME      = $SQLITE_HOME
    SQLITE3          = $SQLITE3
    BUSYBOX_HOME     = $BUSYBOX_HOME
    BUSYBOX          = $BUSYBOX
    WRITE_DIR        = $WRITE_DIR 
    " | $BUSYBOX tee -a $LOGFILE

}

usage() {
    echo "
    Make sure wimax (4G) is NOT running from the phone's GUI.
    (Hint: airplane mode.)
    This utility can re-initialize the wimaxd, do setup, test, and teardown.
    `basename $0` [options] 
    where options are:
        -a: <arg> If arg is 1, do http get test, else don't. (Default is 1)
        -b: <arg> where the busybox binary lives (default is /system/bin)
        -d: debug print
        -g: <arg> If arg is 1, do FTP Get test; default: 0: don't do it
        -h: print help and exit
        -i: <arg> iterations is a number of times to do the tests 
        -o: startup Only: don't do tests or tear down
        -p: <arg> ping_address is an ip address or URL to ping
        -r: don't teaR down connections after each run
        -s: <arg> where the sqlite3 binary lives (default is /system/xbin)
        -t: <arg> do ping test (default is 0)
        -v: development testing only: special limited functionality
        -w: <arg> a writable directory for temporary files (default is /tmp)
        -x: set -x on script; for debugging script itself 
    "
    # End_Of_Usage_Message
}

get_test_sequence() {
    if [ -e "$DB" ]; then
        local T=`$SQLITE3 $DB "select coalesce(max(test_seq),0) + 1 from if_tests;"`
    fi

    if [ ! -z "$T" ]; then
        SEQ_NUM=$T
    else
        SEQ_NUM=1
    fi
 }

run_tests() {
    if [ $STARTUP_ONLY -eq 1 ]; then
        echo "Start up only: Do not run tests" | tee -a $LOGFILE
        bringup
        exit 0
    fi

    if [ $DEVELOPMENT_TEST -eq 1 ]; then
        echo "Development test run" | tee -a $LOGFILE
        bringup
        print_ifconfig_stats
        record_if_stats
        exit 0
    fi


    # Make sure we start each test clean
    teardown

    # Load modules, start wimax and dhcp, connect if possible
    bringup

    # Get and store the IP stats from ifconfig to see if dhcp gave us an address
    check_ip

    # See if the device has a usable connection to the Internet
    if [ $PING_TEST -eq 1 ]; then
        ping_test
    fi

    # Gauge the speed of that connection
    if [ $FTP_GET_TEST -eq 1 ]; then
        ftp_get_test
    fi

    if [ $HTTP_GET_TEST -eq 1 ]; then
        http_get_test
    fi
}

log_fatal() {
    FATAL_ERRORS=$((FATAL_ERRORS + 1)) # running count of fatals in all tests in this session
    FATAL=1  # Fatal for this run only.  Will start next run immediately
    echo "FATAL ERROR: Cannot continue.  Test Number: $TEST_NUM  FATAL Errors so far: $FATAL_ERRORS Error: $@" | tee -a $LOGFILE
}

log_error() {
    ERRORS=$((ERRORS + 1))
    echo "ERROR: Test Number: $TEST_NUM  Errors so far: $ERRORS Error: $@" | tee -a $LOGFILE
}

log_warning() {
    WARNINGS=$((WARNINGS + 1))
    echo "WARNING: Test Number: $TEST_NUM Warnings so far: $WARNINGS.  Warning: $@" | tee -a $LOGFILE
}

log_debug() {
    if [ $PRINT_DEBUG -eq 1 ]; then
        echo "DEBUG: $@" | tee -a $LOGFILE
    fi
}

setup_env() {

    PATH=$PATH:$WRITE_DIR
    if [ -e "$BUSYBOX" ] ; then
        ON_PHONE=1
        for U in $NEEDED_UTILS 
        do
            if [ -e "/$WRITE_DIR/$U" ]; then
                rm  /$WRITE_DIR/$U
            fi
            ln -s $BUSYBOX /$WRITE_DIR/$U
            # alias $U="$WRITE_DIR/$U"  # Avoid pathing problem by specifying full path to all utilities.  
            # unalias $U
            # alias $U="$BUSYBOX $U"
            # $U="$BUSYBOX $U"

        done
    fi
}

# returns 'true' if named process is running
proc_running() {
    if [ $# -ne 1 ]; then
        echo "0"
    fi

    if ps | grep -q $1 ; then
        echo "1"
    else
        echo "0"
    fi
}

verify_proc() {
    if [ $# -ne 1 ] ; then
        echo "Verify one process name at a time" | tee -a $LOGFILE
        log_error "verify_proc bad_call"
    fi
    # we want exactly one instance
    if [ `proc_running $1` -ne 0 ] ; then
        log_debug "$1 running"
        echo "   $1 bringup passed" | tee -a $LOGFILE
        local N=`ps | grep $1 | wc -l`
        if [ $N -gt 1 ] ; then
            echo "$1 has multiple instances" | tee -a $LOGFILE
            log_error "verify_proc $1 multiple_instances "
        fi
    else
        echo "$1 not running" | tee -a $LOGFILE
        log_fatal "$1 is not running"
    fi
}

verify_mod() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    if [ $# -ne 1 ] ; then
        echo "Verify one module at a time" | tee -a $LOGFILE
        log_error "verify_mod bad_call"
    fi

    if lsmod | grep -q $1 ; then
        log_debug "$1 loaded"
        echo "   $1 module load passed" | tee -a $LOGFILE
    else
        echo "$1 NOT loaded" | tee -a $LOGFILE
        log_fatal "Required Module $1 is not loaded"
    fi
}

load_modules() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    local RES
    if [ `module_is_loaded bcmsdio` -ne 1 ]; then
        insmod /system/lib/bcmsdio.ko
        RES=$?
        if [ $RES -ne 0 ]; then
            log_fatal "Error $RES from insmod while loading module bcmsdio.ko"
        fi
        sleep 1
        verify_mod bcmsdio
    else
        log_debug "Module bcmsdio.ko already loaded: not loading"
    fi

    if [ `module_is_loaded bcmwimax` -ne 1 ]; then
        insmod /system/lib/bcmwimax.ko fw_dir=/system/etc/wimax intf_name=wimax0
        RES=$?
        if [ $RES -ne 0 ]; then
            log_fatal "Error $RES from insmod while loading module bcmwimax.ko"
        fi
        sleep 1
        verify_mod bcmwimax
    else
        log_debug "Module bcmwimax.ko already loaded: not loading"
    fi
}

start_wimaxd() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    if [ `proc_running wimaxd` -eq 0 ]; then
        # wimaxd -c /system/etc/wimax/wimaxd.conf > /dev/null 2>&1 &
        wimaxd -c /system/etc/wimax/wimaxd.conf &
        sleep 3
        verify_proc wimaxd
        ifconfig wimax0 up 2> /dev/null
    else
        log_debug "Wimaxd already running: not starting"
    fi

}

start_dhcpcd() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    if [ `proc_running dhcpd` -eq 0 ]; then
        log_debug "Starting dhcpcd: need to wait 15 seconds"
        start wimaxdhcpcd
        sleep 15
        verify_proc dhcpcd
    else
        log_debug "dhcpcd already running: not starting"
    fi
}

find_best_base_station() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    wimaxc search > $TEMP_FILE
    sleep 5
    cat $TEMP_FILE >> $LOGFILE

    # Viewing the tower strength turns out to be useful.  Always print it.
    cat $TEMP_FILE
    
    # local N=`cat $TEMP_FILE | wc -l`
    # log_debug "There are $N lines in the result of wimaxc search"
    # if [ $N -le 4 ] ; then

    N=`cat $TEMP_FILE | sed -ne 's/Network search returned \([0-9][0-9]*\) base.*/\1/p'`
    if [ $N -eq 0 ] ; then
        BEST_IDX=-1
    else
        # cat $TEMP_FILE # remove later
        # cat $TEMP_FILE | sed -ne '/^ [0-9]*/p' > $TEMP_FILE.2
        # cat $TEMP_FILE.2 | sort -nrk 6 | head -1 > $TEMP_FILE.3
        # BEST_IDX=`cat $TEMP_FILE.3 | awk '{print $1}'`
        # rm $TEMP_FILE $TEMP_FILE.2 $TEMP_FILE.3  # restore later
        BEST_IDX=`cat $TEMP_FILE | sed -ne '/^ [0-9]*/p' | sort -nrk 6 | head -1 | awk '{print $1}'`
        # echo $BEST_IDX
    fi
}

bringup() {
    echo "Running Interface Bringup" | tee -a $LOGFILE
    load_modules
    start_wimaxd
    sleep 5
    find_best_base_station
    if [ $BEST_IDX -ge 0 ]; then
        log_debug "Connecting to Idx $BEST_IDX"
        echo "   Found base station passed. Requesting conect to $BEST_IDX" | tee -a $LOGFILE
    else
        echo "   Found no base stations: Returned $BEST_IDX. Fatal" | tee -a $LOGFILE
        log_fatal "No base stations found"
    fi

    if [ $FATAL -eq 1 ]; then
        return
    fi
    wimaxc connect $BEST_IDX
    local RES=$?
    if [ $RES -ne 0 ]; then
        log_fatal "wimax connect failed with error code $RES"
    fi

    sleep 3

    start_dhcpcd
}

check_ip() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    get_if_stats
    # print_if_stats
    store_if_stats
}

http_get_test() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    echo "HTTP test using wget" | tee -a $LOGFILE
    if [ -e $HTTPFILE ]; then
        rm $HTTPFILE
    fi
    touch $HTTPFILE
    time wget $HTTP_SOURCE -O $HTTP_TARGET  2> $HTTPFILE
    if [ $PRINT_DEBUG -eq 1 ]; then
        cat $HTTPFILE
    fi 

    local BYTES=`cat $HTTP_TARGET | wc -c`
    local TIME_SEC=`cat $HTTPFILE | sed -ne 's/real.*\([0-9][0-9]*\)m \([0-9.][0-9.]*\)s.*/\1 \2/p' | awk '{print $1 * 60 + $2 }'`
    if [ $BYTES -eq 0 ]; then
        log_error "wget_http_get failed to retrieve"
    else
        echo "   HTTP test passed. $BYTES bytes in $TIME_SEC seconds " | tee -a $LOGFILE
        if [ ! -z "$TIME_SEC" ]; then
            BPS=`echo "$BYTES $TIME_SEC" | awk '{print $1 / $2}'`
            echo " $BPS Bps" | tee -a $LOGFILE
        else
            echo
        fi
    fi

    echo "HTTP Test $TEST_NUM: $BYTES in $TIME_SEC " >> $LOGFILE

    # Get rid of the file in preparation for the next test
    if [ -e $HTTPFILE ]; then
        rm $HTTPFILE
    fi

}

ftp_get_test() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    # A small file from 195.42.170.128:21
    echo "FTP Get Test Using wget" | tee -a $LOGFILE
    if [ -e $FTPGTRF ]; then
        rm $FTPGTRF
    fi
    touch $FTPGTRF
    time wget $FTP_FILE -O $FTP_TARGET  2> $FTPGTRF
    if [ $PRINT_DEBUG -eq 1 ]; then
        cat $FTPGTRF
    fi

    # and once you have the file do some useful reporting on the receive
    # BYTES=`wc -c $FTP_TARGET | sed -ne 's,\([0-9][0-9]*\)/.*,\1,p' | sed -e 's/ *//g'`
    local BYTES=`cat $FTP_TARGET | wc -c`
    local TIME_SEC=`cat $FTPGTRF | sed -ne 's/real.*\([0-9][0-9]*\)m \([0-9.][0-9.]*\)s.*/\1 \2/p' | awk '{print $1 * 60 + $2 }'`
    if [ $BYTES -eq 0 ]; then
        log_error "wget_get failed to retrieve"
    else
        echo "   FTP test passed. $BYTES bytes in $TIME_SEC seconds " | tee -a $LOGFILE
        if [ ! -z "$TIME_SEC" ]; then
            BPS=`echo "$BYTES $TIME_SEC" | awk '{print $1 / $2}'`
            echo " $BPS Bps" | tee -a $LOGFILE
        else
            echo
        fi
    fi


    echo "FTP Test $TEST_NUM: $BYTES in $TIME_SEC " >> $LOGFILE

    # Get rid of the file in preparation for the next test
    if [ -e $FTPGTRF ]; then
        rm $FTPGTRF
    fi

    # Note you can also do:
    # wget http://www.google.com -O /tmp/foo.html
    # which might be easier than hunting down some anyonymous ftp site
}

get_if_stats() {
    if [ $FATAL -eq 1 ]; then
       return
    fi 
    
    ifconfig wimax0 > $IFCONF

    cat $IFCONF >> $LOGFILE

    unset HW_ADDR
    HW_ADDR=`cat $IFCONF | sed -ne 's/.*HWaddr \(..:..:..:..:..:..\).*/\1/p'`

    unset INET_ADDR
    INET_ADDR=`cat $IFCONF | sed -ne 's/inet addr:\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    if [ -z "$INET_ADDR" ]; then
        # Cope with a possible IPV6 Address
        INET_ADDR=`cat $IFCONF | sed -ne 's/inet6 addr: \(.*\) Scope.*/\1/p' | sed -e 's/ //g' `
        if [ -z "$INET_ADDR" ]; then
            cat $IFCONF
            log_fatal "no IP Address obtained"
        else
            echo "   IPV6 address obtained: $INET_ADDR ; Test passed" | tee -a $LOGFILE
        fi
    else
        echo "   IPV4 address obtained: $INET_ADDR ; Test passed" | tee -a $LOGFILE
    fi

    if [ $FATAL -eq 1 ]; then
       return
    fi 

    unset BCAST_ADDR
    BCAST_ADDR=`cat $IFCONF | sed -ne 's/.*Bcast:\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset MASK_ADDR
    MASK_ADDR=`cat $IFCONF | sed -ne 's/.*Mask:\([0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset RXPKT_NUM
    RXPKT_NUM=`cat $IFCONF | sed -ne 's/RX packets:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset RXPKT_ERR
    RXPKT_ERR=`cat $IFCONF | sed -ne 's/RX packets:.*errors:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset RXPKT_DROP
    RXPKT_DROP=`cat $IFCONF | sed -ne 's/RX packets:.*dropped:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset RXPKT_OVERRUNS
    RXPKT_OVERRUNS=`cat $IFCONF | sed -ne 's/RX packets:.*overruns:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`
    unset RXPKT_FRAMES
    RXPKT_FRAMES=`cat $IFCONF | sed -ne 's/RX packets:.*frame:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset TXPKT_NUM
    TXPKT_NUM=`cat $IFCONF | sed -ne 's/TX packets:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset TXPKT_ERR
    TXPKT_ERR=`cat $IFCONF | sed -ne 's/TX packets:.*errors:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset TXPKT_DROP
    TXPKT_DROP=`cat $IFCONF | sed -ne 's/TX packets:.*dropped:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset TXPKT_OVERRUNS
    TXPKT_OVERRUNS=`cat $IFCONF | sed -ne 's/TX packets:.*overruns:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`
    unset TXPKT_CARRIER
    TXPKT_CARRIER=`cat $IFCONF | sed -ne 's/TX packets:.*carrier:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset COLLISIONS
    COLLISIONS=`cat $IFCONF | sed -ne 's/collisions:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    unset TXQUEUELEN
    TXQUEUELEN=`cat $IFCONF | sed -ne 's/.*txqueuelen:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`

    RX_BYTES=`cat $IFCONF | sed -ne  's/RX bytes:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`
    TX_BYTES=`cat $IFCONF | sed -ne 's/.*TX bytes:\([0-9][0-9]*\).*/\1/p' | sed -e 's/ //g'`
}

print_if_stats() {
    if [ $PRINT_DEBUG -eq 1 ]; then
        echo "Results of ifconfig on wimax0" | tee -a $LOGFILE
        cat $IFCONF
    fi
    log_debug "
        HW_ADDR         = $HW_ADDR
        INET_ADDR       = $INET_ADDR
        BCAST_ADDR      = $BCAST_ADDR
        MASK_ADDR       = $MASK_ADDR
        RXPKT_NUM       = $RXPKT_NUM
        RXPKT_ERR       = $RXPKT_ERR
        RXPKT_DROP      = $RXPKT_DROP
        RXPKT_OVERRUNS  = $RXPKT_OVERRUNS
        RXPKT_FRAMES    = $RXPKT_FRAMES

        TXPKT_NUM       = $TXPKT_NUM
        TXPKT_ERR       = $TXPKT_ERR
        TXPKT_DROP      = $TXPKT_DROP
        TXPKT_OVERRUNS  = $TXPKT_OVERRUNS
        TXPKT_CARRIER   = $TXPKT_CARRIER

        COLLISIONS      = $COLLISIONS
        TXQUEUELEN      = $TXQUEUELEN

        RX_BYTES        = $RX_BYTES
        TX_BYTES        = $TX_BYTES
        "
}
store_if_stats() {
        if [ $FATAL -eq 1 ]; then
            return
        fi
        create_if_table
        local CMD="
            insert into if_tests
            (test_seq, test_num, hw_addr, inet_addr, bcast_addr, mask_addr,
            rxpkt_num, rxpkt_err, rxpkt_drop, rxpkt_overruns, rxpkt_frames,
            txpkt_num, txpkt_err, txpkt_drop, txpkt_overruns, txpkd_carrier,
            collisions, txqueuelen, rx_bytes, tx_bytes)
            values
            ($SEQ_NUM, $TEST_NUM, '$HW_ADDR', '$INET_ADDR', '$BCAST_ADDR', '$MASK_ADDR',
            $RXPKT_NUM, $RXPKT_ERR, $RXPKT_DROP, $RXPKT_OVERRUNS, $RXPKT_FRAMES,
            $TXPKT_NUM, $TXPKT_ERR, $TXPKT_DROP, $TXPKT_OVERRUNS, $TXPKT_CARRIER,
            $COLLISIONS, $TXQUEUELEN, $RX_BYTES, $TX_BYTES);
            "
            log_debug $CMD
            $SQLITE3 $DB "$CMD"
            # $SQLITE3 -line $DB "select * from if_tests;" >> $LOGFILE
}

create_if_table() {
    local CMD="
        CREATE TABLE IF NOT EXISTS if_tests(
            test_seq       INTEGER,
            test_num       INTEGER,
            hw_addr        TEXT,
            inet_addr      TEXT,
            bcast_addr     TEXT,
            mask_addr      TEXT,
            rxpkt_num      INTEGER,
            rxpkt_err      INTEGER,
            rxpkt_drop     INTEGER,
            rxpkt_overruns INTEGER,
            rxpkt_frames   INTEGER,
            txpkt_num      INTEGER,
            txpkt_err      INTEGER,
            txpkt_drop     INTEGER,
            txpkt_overruns INTEGER,
            txpkd_carrier  INTEGER,
            collisions     INTEGER,
            txqueuelen     INTEGER,
            rx_bytes       INTEGER,
            tx_bytes       INTEGER,
            timestamp      DATETIME NOT NULL DEFAULT (datetime('now','localtime')),
            epochtime      INTEGER NOT NULL DEFAULT (strftime('%s','now'))
            );
            "
    $SQLITE3 $DB "$CMD"
}

ping_test() {
    if [ $FATAL -eq 1 ]; then
        return
    fi
    echo "Running ping test" | tee -a $LOGFILE
    local RES=0
    sleep 3
    ping -I wimax0 -c 10 -q www.google.com > $PTRF
    RES=$?
    cat $PTRF >> $LOGFILE
    if [ $RES -ne 0 ]; then
        log_error "ping_test: ping returns error $RES"
        echo "   Ping Test Failed.  ping returns $RES error" | tee -a $LOGFILE
        return
    fi

    # The results should be parsed and shoved into a db table
    local NUM_PKT_TX=`cat $PTRF | sed -ne 's/^\([0-9][0-9]*\) packets transmitted.*/\1/p'`
    local NUM_PKT_RX=`cat $PTRF | sed -ne 's/.*, \([0-9][0-9]*\) packets received.*/\1/p'`
    local PKT_LOSS=`cat $PTRF | sed -ne 's/.*, \([0-9][0-9]*\)% .*/\1/p'`
    local MIN=`cat $PTRF | sed -ne 's,.*min/avg/max = \([0-9.][0-9.]*\)/.*,\1,p'`
    local AVG=`cat $PTRF | sed -ne 's,.*min/avg/max = .*/\([0-9.][0-9.]*\)/.*,\1,p'`
    local MAX=`cat $PTRF | sed -ne 's,.*min/avg/max = .*/.*/\([0-9.][0-9.]*\).*,\1,p'`
        log_debug "Ping summary stats:
              Number packets transmitted: $NUM_PKT_TX
              Number packets received:    $NUM_PKT_RX
              Percent loss:               $PKT_LOSS
              Min turnaround:             $MIN
              Avg turnaround:             $AVG
              Max turnaround:             $MAX
              "
    if [ -z "$NUM_PKT_RX" -o -z "$NUM_PKT_TX" ]; then
        log_error "ping_test No ping results"
        echo "   Ping Test Failed No results" | tee -a $LOGFILE
    elif [ $NUM_PKT_RX -lt $NUM_PKT_TX ]; then
        log_error "ping_test Test Seq: $SEQ_NUM Test Num: $TEST_NUM Number of packets rx ($NUM_PKT_RX) lower than tx ($NUM_PKT_TX)
        Ping summary stats:
              Number packets transmitted: $NUM_PKT_TX
              Number packets received:    $NUM_PKT_RX
              Percent loss:               $PKT_LOSS
              Min turnaround:             $MIN
              Avg turnaround:             $AVG
              Max turnaround:             $MAX
              " >> $LOGFILE
              cat $PRTF >> $LOGFILE
              echo "   Ping Test Failed Loss" | tee -a $LOGFILE
    else
        echo "   Ping test passed" | tee -a $LOGFILE
    fi
}

unload_module() {
    log_debug "Removing modules"
    sleep 5

    rmmod $1
    sleep 2
    if [ $? -ne 0 ]; then
        log_error "unload_module $1"
    fi

    sleep 1

    if [ `module_is_loaded $1` -ne 0 ]; then
        log_error "unload_module $1 not_unloaded"
        else
        echo "   $1 Removal passed" | tee -a $LOGFILE
    fi
}

check_tarang() {
    if [ `tarang_present` -eq 0 ]; then
        echo "tarang device created" | tee -a $LOGFILE
    else
        log_error "check_tarang not_loaded"
    fi
}

tarang_present() {
    if [ -d "/dev/tarang" ]; then
        echo "0"
    else
        echo "1"
    fi
}

interface_is_up() {

    local RESULT
    if ps | grep -q $1 ; then
        RESULT=1
    else
        RESULT=0
    fi

    local N=`ps | grep $1 | wc -l`
    if [ $N -gt 1 ] ; then
        RESULT=2
    fi

    echo $RESULT

}

# returns 'true' if module is loaded
module_is_loaded() {
    if lsmod | grep -q $1 ; then
        echo "1"
    else
        echo "0"
    fi
}

kill_process() {
    killall $1
    sleep 1
    if [ `proc_running $1` -ne 0 ]; then
        log_warning "kill_process $1 failed to stop"
    fi
}


teardown() {
    if [ $NO_TEARDOWN -eq 1 ]; then
        return
    fi

    if [ `proc_running wimaxd` -ne 0 ]; then
        ifconfig wimax0 down
    else
        log_debug "wimax0 not running: not taking interface down"
    fi

    if [ `proc_running dhcpcd` -ne 0 ]; then
        kill_process dhcpcd
    else
        log_debug "dhcpd not running: not killed"
    fi

    if [ `proc_running wimaxd` -ne 0 ]; then
        kill_process wimaxd
    else
        log_debug "wimaxd not running: not killed"
    fi

    # Note that bcmsdio is used by bcmwimax, so order of removal is important
    if [ `module_is_loaded bcmwimax` -ne 0 ]; then
        unload_module bcmwimax
    else
        log_debug "bcmwimax not loaded: not unloading"
    fi

    if [ `module_is_loaded bcmsdio` -ne 0 ]; then
        unload_module bcmsdio
    else
        log_debug "bcmsdio not loaded: not unloading"
    fi
}

report() {
    # echo "Constructing report"
    echo
    echo "================================="
    echo Summary
    echo "================================="
    echo

    if [ $ERRORS -eq 0  -a $FATAL_ERRORS -eq 0 ]; then
        echo "PASS" | tee -a $LOGFILE
    else
        echo "Issues. See Logfile $LOGFILE" | tee -a $LOGFILE
    fi

    echo "Number of sequences on this device:  $SEQ_NUM" | tee -a $LOGFILE
    echo "Number of test sets run: $TEST_NUM of $NUM_TESTS requested " | tee -a $LOGFILE

    echo "Number of fatal errors: $FATAL_ERRORS" | tee -a $LOGFILE
    if [ $FATAL_ERRORS -gt 0 ]; then
        echo "---------"
        grep "FATAL ERROR" $LOGFILE
        echo "---------"
    fi

    echo "Number of errors: $ERRORS" | tee -a $LOGFILE
    if [ $ERRORS -gt 0 ]; then
        echo "---------"
        grep "ERROR" $LOGFILE | grep -v "FATAL ERROR"
        echo "---------"
    fi
    echo "Number of warnings: $WARNINGS" | tee -a $LOGFILE
    echo

}

cleanup() {
    # remove any temporary files
    for U in $NEEDED_UTILS 
    do
        if [ -e "/$WRITE_DIR/$U" ]; then
            rm  /$WRITE_DIR/$U
        fi
    done

    # Move the logfile to a uniform name so it can be easily retrieved from
    # a batch file with adb pull
    cp $LOGFILE /$WRITE_DIR/logfile.txt

    cd $TEMP_DIR
    for F in wimax_log_*; do
        echo "-------------------" >> $TEXT_AGGREGATE
        echo $F >> $TEXT_AGGREGATE
        cat $F >> $TEXT_AGGREGATE
        rm $F
        echo "-------------------" >> $TEXT_AGGREGATE
    done
}

run_test_set() {
    while [ $TEST_NUM -lt $NUM_TESTS ] ; do
        FATAL=0
        TEST_NUM=$((TEST_NUM + 1))
        echo
        echo "--------------------------------------" | tee -a $LOGFILE
        echo "Running Sequence # $SEQ_NUM Test # $TEST_NUM of $NUM_TESTS" | tee -a $LOGFILE
        echo "--------------------------------------" | tee -a $LOGFILE
        run_tests
    done
}

##########################
#  main
##########################

setup $@

run_test_set

# Tear down the interfaces, stop the daemons, unload modules
teardown

report

# Remove extra files
cleanup

if [ $PRINT_DEBUG -eq 1 ]; then
    cat $LOGFILE
fi
echo "Done" 
