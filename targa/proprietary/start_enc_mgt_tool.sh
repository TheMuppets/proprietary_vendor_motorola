#!/system/bin/sh

#############################################################################
# Copyright (C) 2010 Motorola, Inc.                                         #
# All Rights Reserved.                                                      #
#                                                                           #
# The contents of this file are Motorola Confidential Restricted (MCR).     #
#############################################################################

#############################################################################
# Set up Device Encryption                                                  #
#############################################################################

### Put it to background to minimize time impact on start up process
/system/bin/enc_mgt_tool &

