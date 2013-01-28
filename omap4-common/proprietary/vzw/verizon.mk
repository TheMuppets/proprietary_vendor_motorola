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

# Proprietary VZW blobs for LTE

$(call inherit, vendor/motorola/omap4-common/proprietary/vzw/Android.mk)

PRODUCT_PACKAGES += \
	appdirectedsmspermission \
	VerizonSSO \
	VZWAPNLib \
	vzwapnpermission \
	VZWAPNService

#Permissions and Lib for Verizon Wireless Apps
PRODUCT_COPY_FILES += \
    vendor/motorola/omap4-common/proprietary/vzw/com.vzw.hardware.ehrpd.xml:system/etc/permissions/com.vzw.hardware.ehrpd.xml \
    vendor/motorola/omap4-common/proprietary/vzw/com.vzw.hardware.lte.xml:system/etc/permissions/com.vzw.hardware.lte.xml \
    vendor/motorola/omap4-common/proprietary/vzw/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
    vendor/motorola/omap4-common/proprietary/vzw/libmotricity.so:system/lib/libmotricity.so
