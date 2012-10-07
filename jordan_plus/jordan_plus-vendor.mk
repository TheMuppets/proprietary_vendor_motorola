# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# LIBS
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan_plus/lib/libaudio.so:obj/lib/libaudio.so \
	vendor/motorola/jordan_plus/lib/libaudio.so:system/lib/libaudio.so \
	vendor/motorola/jordan_plus/lib/libbayercamera.so:system/lib/libbayercamera.so \
	vendor/motorola/jordan_plus/lib/libcaps.so:system/lib/libcaps.so \
	vendor/motorola/jordan_plus/lib/libIMGegl.so:system/lib/libIMGegl.so \
	vendor/motorola/jordan_plus/lib/libpvr2d.so:system/lib/libpvr2d.so \
	vendor/motorola/jordan_plus/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	vendor/motorola/jordan_plus/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
	vendor/motorola/jordan_plus/lib/libsrv_init.so:system/lib/libsrv_init.so \
	vendor/motorola/jordan_plus/lib/libsrv_um.so:system/lib/libsrv_um.so \
	vendor/motorola/jordan_plus/lib/libsoccamera.so:system/lib/libsoccamera.so \
	vendor/motorola/jordan_plus/lib/libbattd.so:system/lib/libbattd.so \
	vendor/motorola/jordan_plus/lib/libgki.so:system/lib/libgki.so \
	vendor/motorola/jordan_plus/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
	vendor/motorola/jordan_plus/lib/libHPImgApi.so:system/lib/libHPImgApi.so \
	vendor/motorola/jordan_plus/lib/libmotdb.so:system/lib/libmotdb.so \
	vendor/motorola/jordan_plus/lib/libmotodbgutils.so:system/lib/libmotodbgutils.so \
	vendor/motorola/jordan_plus/lib/libmsl_interface.so:system/lib/libmsl_interface.so \
	vendor/motorola/jordan_plus/lib/libsmapi.so:system/lib/libsmapi.so \
	vendor/motorola/jordan_plus/lib/libssmgr.so:system/lib/libssmgr.so \
	vendor/motorola/jordan_plus/lib/libril-moto-umts-1.so:system/lib/libril-moto-umts-1.so \
	vendor/motorola/jordan_plus/lib/librilswitch.so:system/lib/librilswitch.so \
	vendor/motorola/jordan_plus/lib/libtpa.so:system/lib/libtpa.so \
	vendor/motorola/jordan_plus/lib/libtpa_core.so:system/lib/libtpa_core.so \
	vendor/motorola/jordan_plus/lib/libcryptoki.so:system/lib/libcryptoki.so \
	vendor/motorola/jordan_plus/lib/libpanic_daemon.so:system/lib/libpanic_daemon.so \
	vendor/motorola/jordan_plus/lib/hw/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
	vendor/motorola/jordan_plus/lib/hw/gps.jordan.so:system/lib/hw/gps.jordan.so \
	vendor/motorola/jordan_plus/lib/dsp/baseimage.dof:system/lib/dsp/baseimage.dof \
	vendor/motorola/jordan_plus/lib/dsp/conversions.dll64P:system/lib/dsp/conversions.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/jpegdec_sn.dll64P:system/lib/dsp/jpegdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/ringio.dll64P:system/lib/dsp/ringio.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/usn.dll64P:system/lib/dsp/usn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/720p_h264vdec_sn.dll64P:system/lib/dsp/720p_h264vdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/mpeg4ingenc_sn.dll64P:system/lib/dsp/mpeg4ingenc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/h264ingdec_sn.dll64P:system/lib/dsp/h264ingdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/mpeg4ingdec_sn.dll64P:system/lib/dsp/mpeg4ingdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/720p_mp4vdec_sn.dll64P:system/lib/dsp/720p_mp4vdec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/720p_h264venc_sn.dll64P:system/lib/dsp/720p_h264venc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/720p_mp4venc_sn.dll64P:system/lib/dsp/720p_mp4venc_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
	vendor/motorola/jordan_plus/lib/dsp/vpp_sn.dll64P:system/lib/dsp/vpp_sn.dll64P \
	vendor/motorola/jordan_plus/lib/egl/libEGL_POWERVR_SGX530_125.so:system/lib/egl/libEGL_POWERVR_SGX530_125.so \
	vendor/motorola/jordan_plus/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
	vendor/motorola/jordan_plus/lib/egl/libGLESv2_POWERVR_SGX530_125.so:system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
	vendor/motorola/jordan_plus/lib/libOMX.TI.720P.Decoder.so:system/lib/libOMX.TI.720P.Decoder.so \
	vendor/motorola/jordan_plus/lib/libOMX.TI.720P.Encoder.so:system/lib/libOMX.TI.720P.Encoder.so \
	vendor/motorola/jordan_plus/lib/libOMX.TI.JPEG.Encoder.so:system/lib/libOMX.TI.JPEG.Encoder.so \
	vendor/motorola/jordan_plus/lib/libOMX.TI.mp4.splt.Encoder.so:system/lib/libOMX.TI.mp4.splt.Encoder.so \
	vendor/motorola/jordan_plus/lib/libOMX.TI.h264.splt.Encoder.so:system/lib/libOMX.TI.h264.splt.Encoder.so \
	vendor/motorola/jordan_plus/lib/libFMRadio.so:system/lib/libFMRadio.so \
	vendor/motorola/jordan_plus/lib/libfmradio_jni.so:system/lib/libfmradio_jni.so \
	vendor/motorola/jordan_plus/lib/libfmradioplayer.so:system/lib/libfmradioplayer.so \
	vendor/motorola/jordan_plus/lib/libusc.so:system/lib/libusc.so \
	vendor/motorola/jordan_plus/lib/liboemcamera.so:system/lib/liboemcamera.so \
	vendor/motorola/jordan_plus/lib/libPERF.so:system/lib/libPERF.so

#Moto etc
PRODUCT_COPY_FILES += \
        vendor/motorola/jordan_plus/etc/firmware/wl1271.bin:system/etc/firmware/wl1271.bin \
        vendor/motorola/jordan_plus/etc/wifi/fw_tiwlan_ap.bin:system/etc/wifi/fw_tiwlan_ap.bin \
        vendor/motorola/jordan_plus/etc/wifi/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
        vendor/motorola/jordan_plus/etc/cameraCalFileDef5M.bin:system/etc/cameraCalFileDef5M.bin \
        vendor/motorola/jordan_plus/etc/mot_ise_imager_cfg.bin:system/etc/mot_ise_imager_cfg.bin \
	vendor/motorola/jordan_plus/etc/motorola/ap_flex_version.txt:system/etc/motorola/ap_flex_version.txt \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio:system/etc/motorola/bp_nvm_default/File_Audio \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio2:system/etc/motorola/bp_nvm_default/File_Audio2 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio3:system/etc/motorola/bp_nvm_default/File_Audio3 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio4:system/etc/motorola/bp_nvm_default/File_Audio4 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio5:system/etc/motorola/bp_nvm_default/File_Audio5 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio6:system/etc/motorola/bp_nvm_default/File_Audio6 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio7:system/etc/motorola/bp_nvm_default/File_Audio7 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Audio8:system/etc/motorola/bp_nvm_default/File_Audio8 \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_GPRS:system/etc/motorola/bp_nvm_default/File_GPRS \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_GSM:system/etc/motorola/bp_nvm_default/File_GSM \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Logger:system/etc/motorola/bp_nvm_default/File_Logger \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables:system/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_UMA:system/etc/motorola/bp_nvm_default/File_UMA \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/generic_pds_init:system/etc/motorola/bp_nvm_default/generic_pds_init \
	vendor/motorola/jordan_plus/etc/motorola/bp_nvm_default/File_UMA:system/etc/motorola/bp_nvm_default/File_UMA \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/commdrv_fs.sh:system/etc/motorola/comm_drv/commdrv_fs.sh \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg:system/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/mmins_settings.cfg:system/etc/motorola/comm_drv/mmins_settings.cfg \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/mmins_telephony.cfg:system/etc/motorola/comm_drv/mmins_telephony.cfg \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/mmins_user_settings.cfg:system/etc/motorola/comm_drv/mmins_user_settings.cfg \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/plmn_text_table.bin:system/etc/motorola/comm_drv/plmn_text_table.bin \
	vendor/motorola/jordan_plus/etc/motorola/comm_drv/PLMN_VERSION.txt:system/etc/motorola/comm_drv/PLMN_VERSION.txt

#bin
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan_plus/bin/pvrsrvinit:system/bin/pvrsrvinit \
	vendor/motorola/jordan_plus/bin/battd:system/bin/battd \
	vendor/motorola/jordan_plus/bin/protocol_driver:system/bin/protocol_driver \
	vendor/motorola/jordan_plus/bin/opprofdaemon:system/bin/opprofdaemon \
	vendor/motorola/jordan_plus/bin/nvm_daemon:system/bin/nvm_daemon \
	vendor/motorola/jordan_plus/bin/gkisystem:system/bin/gkisystem \
	vendor/motorola/jordan_plus/bin/ap_gain.bin:system/bin/ap_gain.bin \
	vendor/motorola/jordan_plus/bin/fmradioserver:system/bin/fmradioserver \
	vendor/motorola/jordan_plus/bin/brcm_guci_drv:system/bin/brcm_guci_drv \
	vendor/motorola/jordan_plus/bin/akmd2:system/bin/akmd2 \
	vendor/motorola/jordan_plus/bin/aplogd:system/bin/aplogd \
	vendor/motorola/jordan_plus/bin/usbd:system/bin/usbd \
	vendor/motorola/jordan_plus/bin/location:system/bin/location \
	vendor/motorola/jordan_plus/bin/ssmgrd:system/bin/ssmgrd \
	vendor/motorola/jordan_plus/bin/panic_daemon:system/bin/panic_daemon \
	vendor/motorola/jordan_plus/bin/secclkd:system/bin/secclkd \
	vendor/motorola/jordan_plus/bin/gki_pd_notifier:system/bin/gki_pd_notifier

#location proxy
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan_plus/framework/com.motorola.android.location.jar:system/framework/com.motorola.android.location.jar

include vendor/motorola/jordan-common/jordan-common-vendor.mk
