# Copyright (C) 2016 The CyanogenMod Project
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

PRODUCT_COPY_FILES += \
    vendor/motorola/condor/proprietary/bin/mm-qcamera-daemon:system/bin/mm-qcamera-daemon \
    vendor/motorola/condor/proprietary/bin/thermal-engine:system/bin/thermal-engine \
    vendor/motorola/condor/proprietary/etc/acdbdata/Bluetooth_cal.acdb:system/etc/acdbdata/Bluetooth_cal.acdb \
    vendor/motorola/condor/proprietary/etc/acdbdata/General_cal.acdb:system/etc/acdbdata/General_cal.acdb \
    vendor/motorola/condor/proprietary/etc/acdbdata/Global_cal.acdb:system/etc/acdbdata/Global_cal.acdb \
    vendor/motorola/condor/proprietary/etc/acdbdata/Handset_cal.acdb:system/etc/acdbdata/Handset_cal.acdb \
    vendor/motorola/condor/proprietary/etc/acdbdata/Hdmi_cal.acdb:system/etc/acdbdata/Hdmi_cal.acdb \
    vendor/motorola/condor/proprietary/etc/acdbdata/Headset_cal.acdb:system/etc/acdbdata/Headset_cal.acdb \
    vendor/motorola/condor/proprietary/etc/acdbdata/Speaker_cal.acdb:system/etc/acdbdata/Speaker_cal.acdb \
    vendor/motorola/condor/proprietary/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    vendor/motorola/condor/proprietary/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    vendor/motorola/condor/proprietary/etc/firmware/cpp_firmware_v1_1_1.fw:system/etc/firmware/cpp_firmware_v1_1_1.fw \
    vendor/motorola/condor/proprietary/etc/firmware/cpp_firmware_v1_1_6.fw:system/etc/firmware/cpp_firmware_v1_1_6.fw \
    vendor/motorola/condor/proprietary/etc/firmware/cpp_firmware_v1_2_0.fw:system/etc/firmware/cpp_firmware_v1_2_0.fw \
    vendor/motorola/condor/proprietary/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    vendor/motorola/condor/proprietary/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    vendor/motorola/condor/proprietary/etc/firmware/synaptics-s2316i-13101703-175833-condor.tdat:system/etc/firmware/synaptics-s2316i-13101703-175833-condor.tdat \
    vendor/motorola/condor/proprietary/etc/firmware/synaptics-s2316t-13101703-175833-condor.tdat:system/etc/firmware/synaptics-s2316t-13101703-175833-condor.tdat \
    vendor/motorola/condor/proprietary/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    vendor/motorola/condor/proprietary/etc/gps.conf:system/etc/gps.conf \
    vendor/motorola/condor/proprietary/etc/sap.conf:system/etc/sap.conf \
    vendor/motorola/condor/proprietary/lib/hw/camera.vendor.msm8610.so:system/lib/hw/camera.vendor.msm8610.so \
    vendor/motorola/condor/proprietary/lib/hw/sensors.msm8610.so:system/lib/hw/sensors.msm8610.so \
    vendor/motorola/condor/proprietary/lib/libchromatix_ar0543_common.so:system/lib/libchromatix_ar0543_common.so \
    vendor/motorola/condor/proprietary/lib/libchromatix_ar0543_default_video.so:system/lib/libchromatix_ar0543_default_video.so \
    vendor/motorola/condor/proprietary/lib/libchromatix_ar0543_preview.so:system/lib/libchromatix_ar0543_preview.so \
    vendor/motorola/condor/proprietary/lib/libchromatix_ar0543_snapshot.so:system/lib/libchromatix_ar0543_snapshot.so \
    vendor/motorola/condor/proprietary/lib/libmm-qcamera.so:system/lib/libmm-qcamera.so \
    vendor/motorola/condor/proprietary/lib/libmmcamera_ar0543.so:system/lib/libmmcamera_ar0543.so \
    vendor/motorola/condor/proprietary/lib/libmmcamera_interface.so:system/lib/libmmcamera_interface.so \
    vendor/motorola/condor/proprietary/lib/libmmjpeg_interface.so:system/lib/libmmjpeg_interface.so \
    vendor/motorola/condor/proprietary/vendor/lib/libacdbloader.so:system/vendor/lib/libacdbloader.so \
    vendor/motorola/condor/proprietary/vendor/lib/libacdbrtac.so:system/vendor/lib/libacdbrtac.so \
    vendor/motorola/condor/proprietary/vendor/lib/libadiertac.so:system/vendor/lib/libadiertac.so \
    vendor/motorola/condor/proprietary/vendor/lib/libaudcal.so:system/vendor/lib/libaudcal.so \
    vendor/motorola/condor/proprietary/vendor/lib/libaudioalsa.so:system/vendor/lib/libaudioalsa.so \
    vendor/motorola/condor/proprietary/vendor/lib/libjpegdhw.so:system/vendor/lib/libjpegdhw.so \
    vendor/motorola/condor/proprietary/vendor/lib/libjpegehw.so:system/vendor/lib/libjpegehw.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_c2d_module.so:system/vendor/lib/libmmcamera2_c2d_module.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_cpp_module.so:system/vendor/lib/libmmcamera2_cpp_module.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_iface_modules.so:system/vendor/lib/libmmcamera2_iface_modules.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_imglib_modules.so:system/vendor/lib/libmmcamera2_imglib_modules.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_isp_modules.so:system/vendor/lib/libmmcamera2_isp_modules.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_pproc_modules.so:system/vendor/lib/libmmcamera2_pproc_modules.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_sensor_modules.so:system/vendor/lib/libmmcamera2_sensor_modules.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_stats_algorithm.so:system/vendor/lib/libmmcamera2_stats_algorithm.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_stats_modules.so:system/vendor/lib/libmmcamera2_stats_modules.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_vpe_module.so:system/vendor/lib/libmmcamera2_vpe_module.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera2_wnr_module.so:system/vendor/lib/libmmcamera2_wnr_module.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_faceproc.so:system/vendor/lib/libmmcamera_faceproc.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_hdr_gb_lib.so:system/vendor/lib/libmmcamera_hdr_gb_lib.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_hdr_lib.so:system/vendor/lib/libmmcamera_hdr_lib.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_imglib.so:system/vendor/lib/libmmcamera_imglib.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_tintless_algo.so:system/vendor/lib/libmmcamera_tintless_algo.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_tintless_bg_pca_algo.so:system/vendor/lib/libmmcamera_tintless_bg_pca_algo.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_tuning.so:system/vendor/lib/libmmcamera_tuning.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmcamera_wavelet_lib.so:system/vendor/lib/libmmcamera_wavelet_lib.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmjpeg.so:system/vendor/lib/libmmjpeg.so \
    vendor/motorola/condor/proprietary/vendor/lib/libmmqjpeg_codec.so:system/vendor/lib/libmmqjpeg_codec.so \
    vendor/motorola/condor/proprietary/vendor/lib/liboemcamera.so:system/vendor/lib/liboemcamera.so \
    vendor/motorola/condor/proprietary/vendor/lib/libqc-opt.so:system/vendor/lib/libqc-opt.so \
    vendor/motorola/condor/proprietary/vendor/lib/libqomx_jpegdec.so:system/vendor/lib/libqomx_jpegdec.so \
    vendor/motorola/condor/proprietary/vendor/lib/libqomx_jpegenc.so:system/vendor/lib/libqomx_jpegenc.so \
    vendor/motorola/condor/proprietary/vendor/lib/libthermalclient.so:system/vendor/lib/libthermalclient.so \
    vendor/motorola/condor/proprietary/vendor/lib/libthermalioctl.so:system/vendor/lib/libthermalioctl.so \
    vendor/motorola/condor/proprietary/vendor/lib/rfsa/adsp/libadsp_denoise_skel.so:system/vendor/lib/rfsa/adsp/libadsp_denoise_skel.so \
    vendor/motorola/condor/proprietary/vendor/lib/rfsa/adsp/libadsp_jpege_skel.so:system/vendor/lib/rfsa/adsp/libadsp_jpege_skel.so \
    vendor/motorola/condor/proprietary/vendor/lib/soundfx/libqcbassboost.so:system/vendor/lib/soundfx/libqcbassboost.so \
    vendor/motorola/condor/proprietary/vendor/lib/soundfx/libqcreverb.so:system/vendor/lib/soundfx/libqcreverb.so \
    vendor/motorola/condor/proprietary/vendor/lib/soundfx/libqcvirt.so:system/vendor/lib/soundfx/libqcvirt.so
