
# Needed as obj libraries
PRODUCT_COPY_FILES += \
	vendor/motorola/sunfire/proprietary/lib/libnvdispmgr_d.so:obj/lib/libnvdispmgr_d.so \
	vendor/motorola/sunfire/proprietary/lib/libaudio.so:obj/lib/libaudio.so \
	vendor/motorola/sunfire/proprietary/lib/libaudiopolicy.so:obj/lib/libaudiopolicy.so \
	vendor/motorola/sunfire/proprietary/lib/libcamera.so:obj/lib/libcamera.so \
	vendor/motorola/sunfire/proprietary/lib/libhwmediarecorder.so:obj/lib/libhwmediarecorder.so \
	vendor/motorola/sunfire/proprietary/lib/libhwmediaplugin.so:obj/lib/libhwmediaplugin.so
	#vendor/motorola/sunfire/proprietary/lib/libwimax_jni.so:obj/lib/libwimax_jni.so \


# System Libraries
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/libaudio.so:system/lib/libaudio.so \
	vendor/motorola/sunfire/proprietary/lib/libaudiopolicy.so:system/lib/libaudiopolicy.so \
	vendor/motorola/sunfire/proprietary/lib/libbattd.so:system/lib/libbattd.so \
	vendor/motorola/sunfire/proprietary/lib/libcgdrv.so:system/lib/libcgdrv.so \
	vendor/motorola/sunfire/proprietary/lib/libctest.so:system/lib/libctest.so \
	vendor/motorola/sunfire/proprietary/lib/libmirror.so:system/lib/libmirror.so \
	vendor/motorola/sunfire/proprietary/lib/libmoto_ril.so:system/lib/libmoto_ril.so \
	vendor/motorola/sunfire/proprietary/lib/libnmea.so:system/lib/libnmea.so \
	vendor/motorola/sunfire/proprietary/lib/libOpenSLES.so:system/lib/libOpenSLES.so \
	vendor/motorola/sunfire/proprietary/lib/librds_util.so:system/lib/librds_util.so \
	vendor/motorola/sunfire/proprietary/lib/libril.so:system/lib/libril.so \
	vendor/motorola/sunfire/proprietary/lib/libril_rds.so:system/lib/libril_rds.so \
	vendor/motorola/sunfire/proprietary/lib/libtpa.so:system/lib/libtpa.so \
	vendor/motorola/sunfire/proprietary/lib/libtpa_core.so:system/lib/libtpa_core.so

# System Utilities
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/bin/ap_gain.bin:system/bin/ap_gain.bin \
	vendor/motorola/sunfire/proprietary/bin/mot_boot_mode:system/bin/mot_boot_mode \
	vendor/motorola/sunfire/proprietary/bin/charge_only_mode:system/bin/charge_only_mode \
	vendor/motorola/sunfire/proprietary/bin/tund:system/bin/tund \
	vendor/motorola/sunfire/proprietary/bin/sdptool:system/bin/sdptool \
	vendor/motorola/sunfire/proprietary/bin/Hostapd:system/bin/Hostapd \
	vendor/motorola/sunfire/proprietary/bin/battd:system/bin/battd \
	vendor/motorola/sunfire/proprietary/bin/remountpds:system/bin/remountpds \
	vendor/motorola/sunfire/proprietary/bin/touchpad:system/bin/touchpad \
	vendor/motorola/sunfire/proprietary/bin/mdm_panicd:system/bin/mdm_panicd \
	vendor/motorola/sunfire/proprietary/bin/rild:system/bin/rild \
	vendor/motorola/sunfire/proprietary/bin/secclkd:system/bin/secclkd \
	vendor/motorola/sunfire/proprietary/bin/chat-ril:system/bin/chat-ril \
	vendor/motorola/sunfire/proprietary/bin/ftmipcd:system/bin/ftmipcd \
	vendor/motorola/sunfire/proprietary/bin/usbd:system/bin/usbd \
	vendor/motorola/sunfire/proprietary/bin/akmd2:system/bin/akmd2 \
	vendor/motorola/sunfire/proprietary/bin/whisperd:system/bin/whisperd \
	vendor/motorola/sunfire/proprietary/bin/memtest_mode:system/bin/memtest_mode \
	vendor/motorola/sunfire/proprietary/etc/12m_files_copy.sh:system/etc/12m_files_copy.sh \
	vendor/motorola/sunfire/proprietary/bin/slateipcd:system/bin/slateipcd \
	vendor/motorola/sunfire/proprietary/bin/tcmd:system/bin/tcmd \
	vendor/motorola/sunfire/proprietary/bin/vpnclientpm:system/bin/vpnclientpm

# Opencore configuration and libraries
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/etc/pvplayer.cfg:system/etc/pvplayer.cfg \
	vendor/motorola/sunfire/proprietary/lib/libopencore_author.so:system/lib/libopencore_author.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_common.so:system/lib/libopencore_common.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_downloadreg.so:system/lib/libopencore_downloadreg.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_download.so:system/lib/libopencore_download.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_mp4localreg.so:system/lib/libopencore_mp4localreg.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_mp4local.so:system/lib/libopencore_mp4local.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_net_support.so:system/lib/libopencore_net_support.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_player.so:system/lib/libopencore_player.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_rtspreg.so:system/lib/libopencore_rtspreg.so \
	vendor/motorola/sunfire/proprietary/lib/libopencore_rtsp.so:system/lib/libopencore_rtsp.so

# OMX utilities
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/bin/omx_tests:system/bin/omx_tests \
	vendor/motorola/sunfire/proprietary/bin/omx_tests:system/bin/omx_tests

# OMX AV encoding and decoding
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/libnvomx.so:system/lib/libnvomx.so \
	vendor/motorola/sunfire/proprietary/lib/libnvomxilclient.so:system/lib/libnvomxilclient.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \
	vendor/motorola/sunfire/proprietary/lib/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

# nVidia Libraries
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/libnvddk_2d.so:system/lib/libnvddk_2d.so \
	vendor/motorola/sunfire/proprietary/lib/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
	vendor/motorola/sunfire/proprietary/lib/libnvddk_aes_user.so:system/lib/libnvddk_aes_user.so \
	vendor/motorola/sunfire/proprietary/lib/libnvddk_audiofx.so:system/lib/libnvddk_audiofx.so \
	vendor/motorola/sunfire/proprietary/lib/libnvdispatch_helper.so:system/lib/libnvdispatch_helper.so \
	vendor/motorola/sunfire/proprietary/lib/libnvdispmgr_d.so:system/lib/libnvdispmgr_d.so \
	vendor/motorola/sunfire/proprietary/lib/libnvec.so:system/lib/libnvec.so \
	vendor/motorola/sunfire/proprietary/lib/libnvidia_display_jni.so:system/lib/libnvidia_display_jni.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm.so:system/lib/libnvmm.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_audio.so:system/lib/libnvmm_audio.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_image.so:system/lib/libnvmm_image.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_manager.so:system/lib/libnvmm_manager.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_misc.so:system/lib/libnvmm_misc.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_parser.so:system/lib/libnvmm_parser.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_service.so:system/lib/libnvmm_service.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_tracklist.so:system/lib/libnvmm_tracklist.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_utils.so:system/lib/libnvmm_utils.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_video.so:system/lib/libnvmm_video.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_videorenderer.so:system/lib/libnvmm_videorenderer.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_vp6_video.so:system/lib/libnvmm_vp6_video.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_writer.so:system/lib/libnvmm_writer.so \
	vendor/motorola/sunfire/proprietary/lib/libnvodm_dtvtuner.so:system/lib/libnvodm_dtvtuner.so \
	vendor/motorola/sunfire/proprietary/lib/libnvodm_imager.so:system/lib/libnvodm_imager.so \
	vendor/motorola/sunfire/proprietary/lib/libnvodm_misc.so:system/lib/libnvodm_misc.so \
	vendor/motorola/sunfire/proprietary/lib/libnvodm_query.so:system/lib/libnvodm_query.so \
	vendor/motorola/sunfire/proprietary/lib/libnvos.so:system/lib/libnvos.so \
	vendor/motorola/sunfire/proprietary/lib/libnvrm.so:system/lib/libnvrm.so \
	vendor/motorola/sunfire/proprietary/lib/libnvrm_channel.so:system/lib/libnvrm_channel.so \
	vendor/motorola/sunfire/proprietary/lib/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \
	vendor/motorola/sunfire/proprietary/lib/libnvsm.so:system/lib/libnvsm.so \
	vendor/motorola/sunfire/proprietary/lib/libnvwinsys.so:system/lib/libnvwinsys.so \
	vendor/motorola/sunfire/proprietary/lib/libnvwsi.so:system/lib/libnvwsi.so \
	vendor/motorola/sunfire/proprietary/lib/libhwmediarecorder.so:system/lib/libhwmediarecorder.so \
	vendor/motorola/sunfire/proprietary/lib/libhwmediaplugin.so:system/lib/libhwmediaplugin.so


# Motorola Hardware Libraries
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/hw/gps.sunfire.so:system/lib/hw/gps.sunfire.so \
	vendor/motorola/sunfire/proprietary/lib/hw/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
	vendor/motorola/sunfire/proprietary/lib/hw/overlay.tegra.so:system/lib/hw/overlay.tegra.so \
	vendor/motorola/sunfire/proprietary/lib/hw/lights.tegra.so:system/lib/hw/lights.tegra.so \
	vendor/motorola/sunfire/proprietary/lib/hw/sensors.sunfire.so:system/lib/hw/sensors.sunfire.so

# Bluetooth utilities, libraries and configuration
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/liba2dp.so:system/lib/liba2dp.so \
	vendor/motorola/sunfire/proprietary/bin/bt_init:system/bin/bt_init \
	vendor/motorola/sunfire/proprietary/bin/bt_downloader:system/bin/bt_downloader \
	vendor/motorola/sunfire/proprietary/etc/bt_init.config:system/etc/bt_init.config \
	vendor/motorola/sunfire/proprietary/bin/nv_hciattach:system/bin/nv_hciattach

# nVidia AXP binaries
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/bin/nvddk_audiofx_core.axf:system/bin/nvddk_audiofx_core.axf \
	vendor/motorola/sunfire/proprietary/bin/nvddk_audiofx_transport.axf:system/bin/nvddk_audiofx_transport.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_aacdec.axf:system/bin/nvmm_aacdec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_adtsdec.axf:system/bin/nvmm_adtsdec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_audiomixer.axf:system/bin/nvmm_audiomixer.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_h264dec.axf:system/bin/nvmm_h264dec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_jpegdec.axf:system/bin/nvmm_jpegdec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_jpegenc.axf:system/bin/nvmm_jpegenc.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_manager.axf:system/bin/nvmm_manager.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_mp2dec.axf:system/bin/nvmm_mp2dec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_mp3dec.axf:system/bin/nvmm_mp3dec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_mpeg4dec.axf:system/bin/nvmm_mpeg4dec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_reference.axf:system/bin/nvmm_reference.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_service.axf:system/bin/nvmm_service.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_sorensondec.axf:system/bin/nvmm_sorensondec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_sw_mp3dec.axf:system/bin/nvmm_sw_mp3dec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_vc1dec.axf:system/bin/nvmm_vc1dec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_wavdec.axf:system/bin/nvmm_wavdec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_wmadec.axf:system/bin/nvmm_wmadec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvmm_wmaprodec.axf:system/bin/nvmm_wmaprodec.axf \
	vendor/motorola/sunfire/proprietary/bin/nvrm_avp.axf:system/bin/nvrm_avp.axf

# nVidia System Utilities
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/bin/nvrm_daemon:system/bin/nvrm_daemon \
	vendor/motorola/sunfire/proprietary/bin/tegrastats:system/bin/tegrastats

# nVidia EGL libraries and config
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/egl/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
	vendor/motorola/sunfire/proprietary/lib/egl/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
	vendor/motorola/sunfire/proprietary/lib/egl/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so

# Broadcom userland components
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/etc/BCM4329B1_002.002.023.0757.0782.hcd:system/etc/BCM4329B1_002.002.023.0757.0782.hcd \
	vendor/motorola/sunfire/proprietary/etc/wl/nvram.txt:system/etc/wl/nvram.txt \
	vendor/motorola/sunfire/proprietary/etc/wl/sdio-ag-cdc-11n-mfgtest-roml-seqcmds.bin:system/etc/wl/sdio-ag-cdc-11n-mfgtest-roml-seqcmds.bin \
	vendor/motorola/sunfire/proprietary/etc/wl/sdio-ag-cdc-full11n-minioctl-roml-pno-wme-aoe-pktfilter-keepalive.bin:system/etc/wl/sdio-ag-cdc-full11n-minioctl-roml-pno-wme-aoe-pktfilter-keepalive.bin \
	vendor/motorola/sunfire/proprietary/etc/wl/sdio-g-cdc-roml-reclaim-wme-apsta-idauth-minioctl.bin:system/etc/wl/sdio-g-cdc-roml-reclaim-wme-apsta-idauth-minioctl.bin

# Camera
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/libcamera.so:system/lib/libcamera.so \
	vendor/motorola/sunfire/proprietary/lib/libnvmm_camera.so:system/lib/libnvmm_camera.so

# Screen Digitizer
#PRODUCT_COPY_FILES +=  \
#	vendor/motorola/sunfire/proprietary/etc/touchpad/20/touchpad.cfg:system/etc/touchpad/20/touchpad.cfg \
#	vendor/motorola/sunfire/proprietary/etc/touchpad/21/touchpad.cfg:system/etc/touchpad/21/touchpad.cfg \
#	vendor/motorola/sunfire/proprietary/etc/touchpad/22/touchpad.cfg:system/etc/touchpad/22/touchpad.cfg
# Covered in sunfire.mk - 10-point fix from XDA


# PPP subsystem
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/etc/ppp/peers/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
	vendor/motorola/sunfire/proprietary/lib/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
	vendor/motorola/sunfire/proprietary/lib/libpppd_plugin.so:system/lib/libpppd_plugin.so \
	vendor/motorola/sunfire/proprietary/bin/pppd-ril:system/bin/pppd-ril \
	vendor/motorola/sunfire/proprietary/bin/pppd:system/bin/pppd \
	vendor/motorola/sunfire/proprietary/bin/testpppd:system/bin/testpppd

# Stage Fright
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/lib/libstagefrighthw.so:system/lib/libstagefrighthw.so

# WiMax
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/etc/wimax/RemoteProxy.cfg:system/etc/wimax/RemoteProxy.cfg \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/:system/etc/wimax/certs \
	vendor/motorola/sunfire/proprietary/etc/wimax/macxvi.cfg:system/etc/wimax/macxvi.cfg \
	vendor/motorola/sunfire/proprietary/etc/wimax/macxvi350.bin:system/etc/wimax/macxvi350.bin \
	vendor/motorola/sunfire/proprietary/etc/wimax/mfg/:system/etc/wimax/mfg \
	vendor/motorola/sunfire/proprietary/etc/wimax/wimax_oma_dm.db:system/etc/wimax/wimax_oma_dm.db \
	vendor/motorola/sunfire/proprietary/etc/wimax/wimaxd.conf:system/etc/wimax/wimaxd.conf \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/443b9c9f.0:system/etc/wimax/certs/443b9c9f.0 \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/4ef3ec0e.0:system/etc/wimax/certs/4ef3ec0e.0 \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/51023c8f.0:system/etc/wimax/certs/51023c8f.0 \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/Commercial_device.pem:system/etc/wimax/certs/Commercial_device.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/Commercial_prv_plain_key.pem:system/etc/wimax/certs/Commercial_prv_plain_key.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/TestCA.pem:system/etc/wimax/certs/TestCA.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/e1c07118.0:system/etc/wimax/certs/e1c07118.0 \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/wimax_server_root.pem:system/etc/wimax/certs/wimax_server_root.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/wimax_server_root_ca1.pem:system/etc/wimax/certs/wimax_server_root_ca1.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/wimax_server_root_ca2.pem:system/etc/wimax/certs/wimax_server_root_ca2.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/certs/wimax_server_root_ca3.pem:system/etc/wimax/certs/wimax_server_root_ca3.pem \
	vendor/motorola/sunfire/proprietary/etc/wimax/mfg/macxvi.cfg:system/etc/wimax/mfg/macxvi.cfg \
	vendor/motorola/sunfire/proprietary/etc/wimax/mfg/macxvi350.bin:system/etc/wimax/mfg/macxvi350.bin \
	vendor/motorola/sunfire/proprietary/bin/wimaxc:system/bin/wimaxc \
	vendor/motorola/sunfire/proprietary/bin/wimaxd:system/bin/wimaxd \
	vendor/motorola/sunfire/proprietary/lib/libwimax_moto.so:system/lib/libwimax_moto.so \
	vendor/motorola/sunfire/proprietary/bin/wimax_test.sh:system/bin/wimax_test.sh \
	vendor/motorola/sunfire/proprietary/lib/bcmwimax.ko:system/lib/bcmwimax.ko

#	vendor/motorola/sunfire/proprietary/lib/libwimax_jni.so:system/lib/libwimax_jni.so \


# FM Radio
PRODUCT_COPY_FILES +=  \
	vendor/motorola/sunfire/proprietary/bin/fmradioserver:system/bin/fmradioserver \
	vendor/motorola/sunfire/proprietary/lib/libfmradio_jni.so:system/lib/libfmradio_jni.so \
	vendor/motorola/sunfire/proprietary/lib/libfmradioplayer.so:system/lib/libfmradioplayer.so

