# Copyright (C) 2019-2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/motorola/hannah-common/setup-makefiles.sh

PRODUCT_SOONG_NAMESPACES += \
    vendor/motorola/hannah-common

PRODUCT_COPY_FILES += \
    vendor/motorola/hannah-common/proprietary/lib/libdualcameraddm.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libdualcameraddm.so \
    vendor/motorola/hannah-common/proprietary/lib/libjni_dualcamera.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libjni_dualcamera.so \
    vendor/motorola/hannah-common/proprietary/lib/libqvrcamera_client.so:$(TARGET_COPY_OUT_SYSTEM)/lib/libqvrcamera_client.so \
    vendor/motorola/hannah-common/proprietary/vendor/bin/hw/android.hardware.biometrics.fingerprint@2.1-service-ets:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.biometrics.fingerprint@2.1-service-ets \
    vendor/motorola/hannah-common/proprietary/vendor/bin/hw/android.hardware.gatekeeper@1.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.gatekeeper@1.0-service-qti \
    vendor/motorola/hannah-common/proprietary/vendor/bin/hw/android.hardware.keymaster@3.0-service-qti:$(TARGET_COPY_OUT_VENDOR)/bin/hw/android.hardware.keymaster@3.0-service-qti \
    vendor/motorola/hannah-common/proprietary/vendor/bin/sensors.qti:$(TARGET_COPY_OUT_VENDOR)/bin/sensors.qti \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Bluetooth_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/General_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Global_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Handset_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Hdmi_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Headset_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/acdbdata/Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/acdbdata/Speaker_cal.acdb \
    vendor/motorola/hannah-common/proprietary/vendor/etc/init/android.hardware.biometrics.fingerprint@2.1-service-ets.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.biometrics.fingerprint@2.1-service-ets.rc \
    vendor/motorola/hannah-common/proprietary/vendor/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.gatekeeper@1.0-service-qti.rc \
    vendor/motorola/hannah-common/proprietary/vendor/etc/init/android.hardware.keymaster@3.0-service-qti.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/android.hardware.keymaster@3.0-service-qti.rc \
    vendor/motorola/hannah-common/proprietary/vendor/etc/init/init.ets.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.ets.rc \
    vendor/motorola/hannah-common/proprietary/vendor/etc/qdcm_calib_data_mipi_mot_video_djn_hd_599.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_mipi_mot_video_djn_hd_599.xml \
    vendor/motorola/hannah-common/proprietary/vendor/etc/qdcm_calib_data_mipi_mot_video_djn_hd_600.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_mipi_mot_video_djn_hd_600.xml \
    vendor/motorola/hannah-common/proprietary/vendor/etc/qdcm_calib_data_mipi_mot_video_tianma_hd_599.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_mipi_mot_video_tianma_hd_599.xml \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libS5k2l7Pdaf.so:$(TARGET_COPY_OUT_VENDOR)/lib/libS5k2l7Pdaf.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libS5k2l7PdafCamif.so:$(TARGET_COPY_OUT_VENDOR)/lib/libS5k2l7PdafCamif.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libSonyDefocus.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSonyDefocus.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libSonyDualPDLibrary.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSonyDualPDLibrary.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libSonyDualPDParam.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSonyDualPDParam.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromaflash.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromaflash.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_common.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_common.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_cpp_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_cpp_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_cpp_liveshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_cpp_liveshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_cpp_preview.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_cpp_preview.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_cpp_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_cpp_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_cpp_video_full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_cpp_video_full.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_hfr_120_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_hfr_120_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_postproc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_postproc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_video_full.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_video_full.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_zsl_preview_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_zsl_preview_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_mot_s5k4h7_zsl_video_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_mot_s5k4h7_zsl_video_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_common.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_common.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_cpp_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_cpp_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_cpp_liveshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_cpp_liveshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_cpp_preview.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_cpp_preview.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_cpp_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_cpp_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_cpp_video.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_cpp_video.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_default_video.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_default_video.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_hfr_120_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_hfr_120_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_postproc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_postproc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_preview.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_preview.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_zsl_preview_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_zsl_preview_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov12a10_zsl_video_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov12a10_zsl_video_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_common.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_common.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_cpp_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_cpp_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_cpp_liveshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_cpp_liveshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_cpp_preview.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_cpp_preview.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_cpp_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_cpp_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_cpp_video.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_cpp_video.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_hfr_120_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_hfr_120_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_postproc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_postproc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_zsl_preview_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_zsl_preview_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterht_zsl_video_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterht_zsl_video_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_common.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_common.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_cpp_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_cpp_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_cpp_liveshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_cpp_liveshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_cpp_preview.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_cpp_preview.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_cpp_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_cpp_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_cpp_video.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_cpp_video.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_hfr_120.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_hfr_120.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_hfr_120_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_hfr_120_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_postproc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_postproc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_snapshot.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_snapshot.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_zsl_preview_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_zsl_preview_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libchromatix_ov5675_jeterkc_zsl_video_3a.so:$(TARGET_COPY_OUT_VENDOR)/lib/libchromatix_ov5675_jeterkc_zsl_video_3a.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libgralloc1.so:$(TARGET_COPY_OUT_VENDOR)/lib/libgralloc1.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libjpegdhw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libjpegdhw.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libjpegdmahw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libjpegdmahw.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libjpegehw.so:$(TARGET_COPY_OUT_VENDOR)/lib/libjpegehw.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libmmcamera_mot_ov12a10.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmmcamera_mot_ov12a10.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libmmcamera_mot_ov5675.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmmcamera_mot_ov5675.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libmmcamera_s5k4h7.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmmcamera_s5k4h7.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libmot_lux_standardization.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmot_lux_standardization.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/liboptizoom.so:$(TARGET_COPY_OUT_VENDOR)/lib/liboptizoom.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libqomx_core.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqomx_core.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libqomx_jpegdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqomx_jpegdec.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libqomx_jpegenc.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqomx_jpegenc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libqomx_jpegenc_pipe.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqomx_jpegenc_pipe.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libremosaic_daemon.so:$(TARGET_COPY_OUT_VENDOR)/lib/libremosaic_daemon.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libseemore.so:$(TARGET_COPY_OUT_VENDOR)/lib/libseemore.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libsensor1.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsensor1.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libsensor_reg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsensor_reg.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libtrueportrait.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtrueportrait.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/libubifocus.so:$(TARGET_COPY_OUT_VENDOR)/lib/libubifocus.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/rfsa/adsp/tas2560_TI.bin:$(TARGET_COPY_OUT_VENDOR)/lib/rfsa/adsp/tas2560_TI.bin \
    vendor/motorola/hannah-common/proprietary/vendor/lib/sensor_calibrate.so:$(TARGET_COPY_OUT_VENDOR)/lib/sensor_calibrate.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/sensors.hal.tof.so:$(TARGET_COPY_OUT_VENDOR)/lib/sensors.hal.tof.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/sensors.rp.so:$(TARGET_COPY_OUT_VENDOR)/lib/sensors.rp.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/sensors.ssc.so:$(TARGET_COPY_OUT_VENDOR)/lib/sensors.ssc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib/vendor.qti.hardware.sensorscalibrate@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.hardware.sensorscalibrate@1.0.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.gatekeeper@1.0-impl-qti.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so:$(TARGET_COPY_OUT_VENDOR)/lib64/hw/android.hardware.keymaster@3.0-impl-qti.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libets_fp_et5.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libets_fp_et5.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libets_teeclient.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libets_teeclient.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libkeymasterdeviceutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterdeviceutils.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libkeymasterprovision.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterprovision.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libkeymasterutils.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libkeymasterutils.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libsensor1.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsensor1.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/libsensor_reg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libsensor_reg.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/sensor_calibrate.so:$(TARGET_COPY_OUT_VENDOR)/lib64/sensor_calibrate.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/sensors.rp.so:$(TARGET_COPY_OUT_VENDOR)/lib64/sensors.rp.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/sensors.ssc.so:$(TARGET_COPY_OUT_VENDOR)/lib64/sensors.ssc.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/vendor.egistec.hardware.fingerprint@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.egistec.hardware.fingerprint@2.0.so \
    vendor/motorola/hannah-common/proprietary/vendor/lib64/vendor.qti.hardware.sensorscalibrate@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.hardware.sensorscalibrate@1.0.so

PRODUCT_PACKAGES += \
    libts_detected_face_hal \
    libts_face_beautify_hal
