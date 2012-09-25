# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_PATH := vendor/motorola/everest

# Motorola blobs necessary for everest hardware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/akmd2:system/bin/akmd2 \
    $(LOCAL_PATH)/proprietary/batch:system/bin/batch \
    $(LOCAL_PATH)/proprietary/brcm_guci_drv:system/bin/brcm_guci_drv \
    $(LOCAL_PATH)/proprietary/bugtogo.sh:system/bin/bugtogo.sh \
    $(LOCAL_PATH)/proprietary/chat-ril:system/bin/chat-ril \
    $(LOCAL_PATH)/proprietary/ftmipcd:system/bin/ftmipcd \
    $(LOCAL_PATH)/proprietary/location:system/bin/location \
    $(LOCAL_PATH)/proprietary/pppd:system/bin/pppd \
    $(LOCAL_PATH)/proprietary/pppd-ril:system/bin/pppd-ril \
    $(LOCAL_PATH)/proprietary/tcmd:system/bin/tcmd \
    $(LOCAL_PATH)/proprietary/tty2ttyd:system/bin/tty2ttyd \
    $(LOCAL_PATH)/proprietary/cpcap_gain.bin:system/etc/cpcap_gain.bin \
    $(LOCAL_PATH)/proprietary/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/proprietary/gpsconfig.xml:system/etc/gpsconfig.xml \
    $(LOCAL_PATH)/proprietary/location.cfg:system/etc/location.cfg \
    $(LOCAL_PATH)/proprietary/key_code_map.txt:system/etc/motorola/12m/key_code_map.txt \
    $(LOCAL_PATH)/proprietary/tcmd_leds.cfg:system/etc/motorola/12m/tcmd_leds.cfg \
    $(LOCAL_PATH)/proprietary/pppd-ril.options:system/etc/ppp/peers/pppd-ril.options \
    $(LOCAL_PATH)/proprietary/suplcerts.bks:system/etc/security/suplcerts.bks \
    $(LOCAL_PATH)/proprietary/voip_aud_params.bin:system/etc/voip_aud_params.bin \
    $(LOCAL_PATH)/proprietary/camera.stingray.so:system/lib/hw/camera.stingray.so \
    $(LOCAL_PATH)/proprietary/gps.stingray.so:system/lib/hw/gps.stingray.so \
    $(LOCAL_PATH)/proprietary/libmoto_ecnswrapper.so:system/lib/libmoto_ecnswrapper.so \
    $(LOCAL_PATH)/proprietary/libmoto_ril.so:system/lib/libmoto_ril.so \
    $(LOCAL_PATH)/proprietary/libpppd_plugin-ril.so:system/lib/libpppd_plugin-ril.so \
    $(LOCAL_PATH)/proprietary/libreference-ril.so:system/lib/libreference-ril.so \
    $(LOCAL_PATH)/proprietary/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/proprietary/libril_rds.so:system/lib/libril_rds.so \
    $(LOCAL_PATH)/proprietary/libtpa.so:system/lib/libtpa.so \
    $(LOCAL_PATH)/proprietary/libtpa_core.so:system/lib/libtpa_core.so

