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

VENDOR_BLOB_FOLDER := vendor/motorola/omap4-common/proprietary

$(call inherit, vendor/motorola/omap4-common/proprietary/app/Android.mk)

PRODUCT_PACKAGES += \
	appdirectedsmspermission \
	VerizonSSOEngine \
	VZWAPNLib \
	vzwapnpermission \
	VZWAPNService

#Permissions and Lib for Verizon Wireless Apps
PRODUCT_COPY_FILES += \
$(VENDOR_BLOB_FOLDER)/etc/permissions/com.verizon.hardware.telephony.ehrpd.xml:system/etc/permissions/com.verizon.hardware.telephony.ehrpd.xml \
$(VENDOR_BLOB_FOLDER)/etc/permissions/com.verizon.hardware.telephony.lte.xml:system/etc/permissions/com.verizon.hardware.telephony.lte.xml \
$(VENDOR_BLOB_FOLDER)/etc/permissions/com.vzw.vzwapnlib.xml:system/etc/permissions/com.vzw.vzwapnlib.xml \
$(VENDOR_BLOB_FOLDER)/lib/libmotricity.so:system/lib/libmotricity.so
