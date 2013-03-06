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

VENDOR_BLOB_FOLDER := vendor/motorola/omap4-common/proprietary/audio

# Audio
PRODUCT_COPY_FILES += \
    $(VENDOR_BLOB_FOLDER)/ap_gain.bin:/system/bin/ap_gain.bin \
    $(VENDOR_BLOB_FOLDER)/ap_gain_mmul.bin:/system/bin/ap_gain_mmul.bin \
    $(VENDOR_BLOB_FOLDER)/libaudio_ext.so:/system/lib/libaudio_ext.so \
    $(VENDOR_BLOB_FOLDER)/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    $(VENDOR_BLOB_FOLDER)/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so
