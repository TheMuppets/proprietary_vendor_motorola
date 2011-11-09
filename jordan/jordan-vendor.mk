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
	vendor/motorola/jordan/lib/libaudio.so:obj/lib/libaudio.so \
	vendor/motorola/jordan/lib/libaudio.so:system/lib/libaudio.so \
	vendor/motorola/jordan/lib/libarcsoft.so:system/lib/libarcsoft.so \
	vendor/motorola/jordan/lib/libbayercamera.so:system/lib/libbayercamera.so \
	vendor/motorola/jordan/lib/libcaps.so:system/lib/libcaps.so \
	vendor/motorola/jordan/lib/libIMGegl.so:system/lib/libIMGegl.so \
	vendor/motorola/jordan/lib/libpvr2d.so:system/lib/libpvr2d.so \
	vendor/motorola/jordan/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	vendor/motorola/jordan/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
	vendor/motorola/jordan/lib/libsmiledetect.so:system/lib/libsmiledetect.so \
	vendor/motorola/jordan/lib/libsrv_init.so:system/lib/libsrv_init.so \
	vendor/motorola/jordan/lib/libsrv_um.so:system/lib/libsrv_um.so \
	vendor/motorola/jordan/lib/libsoccamera.so:system/lib/libsoccamera.so \
	vendor/motorola/jordan/lib/libbattd.so:system/lib/libbattd.so \
	vendor/motorola/jordan/lib/libcryptoki.so:system/lib/libcryptoki.so \
	vendor/motorola/jordan/lib/libganril.so:system/lib/libganril.so \
	vendor/motorola/jordan/lib/libgki.so:system/lib/libgki.so \
	vendor/motorola/jordan/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
	vendor/motorola/jordan/lib/libHPImgApi.so:system/lib/libHPImgApi.so \
	vendor/motorola/jordan/lib/libmotdb.so:system/lib/libmotdb.so \
	vendor/motorola/jordan/lib/libmotodbgutils.so:system/lib/libmotodbgutils.so \
	vendor/motorola/jordan/lib/libmsl_interface.so:system/lib/libmsl_interface.so \
	vendor/motorola/jordan/lib/libssmgr.so:system/lib/libssmgr.so \
	vendor/motorola/jordan/lib/libtpa.so:system/lib/libtpa.so \
	vendor/motorola/jordan/lib/libtpa_core.so:system/lib/libtpa_core.so \
	vendor/motorola/jordan/lib/libril-moto-umts-1.so:system/lib/libril-moto-umts-1.so \
	vendor/motorola/jordan/lib/librilswitch.so:system/lib/librilswitch.so \
	vendor/motorola/jordan/lib/libsmapi.so:system/lib/libsmapi.so \
	vendor/motorola/jordan/lib/hw/gralloc.omap3.so:system/lib/hw/gralloc.omap3.so \
	vendor/motorola/jordan/lib/hw/gps.jordan.so:system/lib/hw/gps.jordan.so \
	vendor/motorola/jordan/lib/dsp/baseimage.dof:system/lib/dsp/baseimage.dof \
	vendor/motorola/jordan/lib/dsp/conversions.dll64P:system/lib/dsp/conversions.dll64P \
	vendor/motorola/jordan/lib/dsp/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/jpegdec_sn.dll64P:system/lib/dsp/jpegdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
	vendor/motorola/jordan/lib/dsp/ringio.dll64P:system/lib/dsp/ringio.dll64P \
	vendor/motorola/jordan/lib/dsp/usn.dll64P:system/lib/dsp/usn.dll64P \
	vendor/motorola/jordan/lib/dsp/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/720p_h264vdec_sn.dll64P:system/lib/dsp/720p_h264vdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/mpeg4ingenc_sn.dll64P:system/lib/dsp/mpeg4ingenc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/h264ingdec_sn.dll64P:system/lib/dsp/h264ingdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/mpeg4ingdec_sn.dll64P:system/lib/dsp/mpeg4ingdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/720p_mp4vdec_sn.dll64P:system/lib/dsp/720p_mp4vdec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/720p_h264venc_sn.dll64P:system/lib/dsp/720p_h264venc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/720p_mp4venc_sn.dll64P:system/lib/dsp/720p_mp4venc_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
	vendor/motorola/jordan/lib/dsp/vpp_sn.dll64P:system/lib/dsp/vpp_sn.dll64P \
	vendor/motorola/jordan/lib/egl/libeglinfo.so:system/lib/egl/libeglinfo.so \
	vendor/motorola/jordan/lib/egl/libEGL_POWERVR_SGX530_125.so:system/lib/egl/libEGL_POWERVR_SGX530_125.so \
	vendor/motorola/jordan/lib/egl/libgles1_texture_stream.so:system/lib/egl/libgles1_texture_stream.so \
	vendor/motorola/jordan/lib/egl/libgles2_texture_stream.so:system/lib/egl/libgles2_texture_stream.so \
	vendor/motorola/jordan/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX530_125.so \
	vendor/motorola/jordan/lib/egl/libGLESv2_POWERVR_SGX530_125.so:system/lib/egl/libGLESv2_POWERVR_SGX530_125.so \
	vendor/motorola/jordan/lib/libOMX.TI.720P.Decoder.so:system/lib/libOMX.TI.720P.Decoder.so \
	vendor/motorola/jordan/lib/libOMX.TI.720P.Encoder.so:system/lib/libOMX.TI.720P.Encoder.so \
	vendor/motorola/jordan/lib/libOMX.TI.JPEG.Encoder.so:system/lib/libOMX.TI.JPEG.Encoder.so \
	vendor/motorola/jordan/lib/libOMX.TI.mp4.splt.Encoder.so:system/lib/libOMX.TI.mp4.splt.Encoder.so \
	vendor/motorola/jordan/lib/libOMX.TI.h264.splt.Encoder.so:system/lib/libOMX.TI.h264.splt.Encoder.so \
	vendor/motorola/jordan/lib/libFMRadio.so:system/lib/libFMRadio.so \
	vendor/motorola/jordan/lib/libfmradio_jni.so:system/lib/libfmradio_jni.so \
	vendor/motorola/jordan/lib/libfmradioplayer.so:system/lib/libfmradioplayer.so \
	vendor/motorola/jordan/lib/liboemcamera.so:system/lib/liboemcamera.so 

#Moto etc
PRODUCT_COPY_FILES += \
        vendor/motorola/jordan/etc/wifi/fw_tiwlan_ap.bin:system/etc/wifi/fw_tiwlan_ap.bin \
        vendor/motorola/jordan/etc/wifi/fw_tiwlan_ap_rfmd.bin:system/etc/wifi/fw_tiwlan_ap_rfmd.bin \
        vendor/motorola/jordan/etc/wifi/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
        vendor/motorola/jordan/etc/firmware/wl1271.bin:system/etc/firmware/wl1271.bin \
        vendor/motorola/jordan/etc/fmc_init_1273.2.bts:system/etc/fmc_init_1273.2.bts \
        vendor/motorola/jordan/etc/fmc_init_6450.2.bts:system/etc/fmc_init_6450.2.bts \
        vendor/motorola/jordan/etc/fm_rx_init_1273.2.bts:system/etc/fm_rx_init_1273.2.bts \
        vendor/motorola/jordan/etc/fm_rx_init_6450.2.bts:system/etc/fm_rx_init_6450.2.bts \
        vendor/motorola/jordan/etc/cameraCalFileDef5M.bin:system/etc/cameraCalFileDef5M.bin \
        vendor/motorola/jordan/etc/cameraCalFileDef8M.bin:system/etc/cameraCalFileDef8M.bin \
        vendor/motorola/jordan/etc/mot_ise_imager_cfg.bin:system/etc/mot_ise_imager_cfg.bin \
	vendor/motorola/jordan/etc/motorola/ap_flex_version.txt:system/etc/motorola/ap_flex_version.txt \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio:system/etc/motorola/bp_nvm_default/File_Audio \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio1_AMR_WB \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio2:system/etc/motorola/bp_nvm_default/File_Audio2 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio2_AMR_WB \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio3:system/etc/motorola/bp_nvm_default/File_Audio3 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio4:system/etc/motorola/bp_nvm_default/File_Audio4 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio5:system/etc/motorola/bp_nvm_default/File_Audio5 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB:system/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio6:system/etc/motorola/bp_nvm_default/File_Audio6 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio7:system/etc/motorola/bp_nvm_default/File_Audio7 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Audio8:system/etc/motorola/bp_nvm_default/File_Audio8 \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_GPRS:system/etc/motorola/bp_nvm_default/File_GPRS \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_GSM:system/etc/motorola/bp_nvm_default/File_GSM \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Logger:system/etc/motorola/bp_nvm_default/File_Logger \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables:system/etc/motorola/bp_nvm_default/File_Seem_Flex_Tables \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_UMA:system/etc/motorola/bp_nvm_default/File_UMA \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/generic_pds_init:system/etc/motorola/bp_nvm_default/generic_pds_init \
	vendor/motorola/jordan/etc/motorola/bp_nvm_default/File_UMA:system/etc/motorola/bp_nvm_default/File_UMA \
	vendor/motorola/jordan/etc/motorola/comm_drv/commdrv_fs.sh:system/etc/motorola/comm_drv/commdrv_fs.sh \
	vendor/motorola/jordan/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg:system/etc/motorola/comm_drv/mmins_cust_emergency_number.cfg \
	vendor/motorola/jordan/etc/motorola/comm_drv/mmins_settings.cfg:system/etc/motorola/comm_drv/mmins_settings.cfg \
	vendor/motorola/jordan/etc/motorola/comm_drv/mmins_telephony.cfg:system/etc/motorola/comm_drv/mmins_telephony.cfg \
	vendor/motorola/jordan/etc/motorola/comm_drv/mmins_user_settings.cfg:system/etc/motorola/comm_drv/mmins_user_settings.cfg \
	vendor/motorola/jordan/etc/motorola/comm_drv/plmn_text_table.bin:system/etc/motorola/comm_drv/plmn_text_table.bin \
	vendor/motorola/jordan/etc/motorola/comm_drv/PLMN_VERSION.txt:system/etc/motorola/comm_drv/PLMN_VERSION.txt

#bin
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan/bin/pvrsrvinit:system/bin/pvrsrvinit \
	vendor/motorola/jordan/bin/battd:system/bin/battd \
	vendor/motorola/jordan/bin/protocol_driver:system/bin/protocol_driver \
	vendor/motorola/jordan/bin/opprofdaemon:system/bin/opprofdaemon \
	vendor/motorola/jordan/bin/nvm_daemon:system/bin/nvm_daemon \
	vendor/motorola/jordan/bin/gkisystem:system/bin/gkisystem \
	vendor/motorola/jordan/bin/ap_gain_mmul.bin:system/bin/ap_gain_mmul.bin \
	vendor/motorola/jordan/bin/ap_gain.bin:system/bin/ap_gain.bin \
	vendor/motorola/jordan/bin/fmradioserver:system/bin/fmradioserver \
	vendor/motorola/jordan/bin/brcm_guci_drv:system/bin/brcm_guci_drv \
	vendor/motorola/jordan/bin/akmd2:system/bin/akmd2 \
	vendor/motorola/jordan/bin/usbd:system/bin/usbd \
	vendor/motorola/jordan/bin/location:system/bin/location \
	vendor/motorola/jordan/bin/ssmgrd:system/bin/ssmgrd

#location proxy
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan/framework/com.motorola.android.location.jar:system/framework/com.motorola.android.location.jar

#app
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan/app/FMRadio.apk:system/app/FMRadio.apk \
	vendor/motorola/jordan/app/FMRadioService.apk:system/app/FMRadioService.apk \
	vendor/motorola/jordan/app/MotoPhonePortal.apk:system/app/MotoPhonePortal.apk \
	vendor/motorola/jordan/app/AudioEffectSettings.apk:system/app/AudioEffectSettings.apk \
	vendor/motorola/jordan/app/CompassCalibrate.apk:system/app/CompassCalibrate.apk \

#extra
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan/media/Moto.ogg:system/media/audio/ringtones/Moto.ogg

#prebuilt libs from CyanogenDefy for CM 7.1.0 (omap3 and omx changes)
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan/cm71/libstagefright.so:system/lib/libstagefright.so \
	vendor/motorola/jordan/cm71/libOMX.TI.Video.Decoder.so:system/lib/libOMX.TI.Video.Decoder.so \

#the end
