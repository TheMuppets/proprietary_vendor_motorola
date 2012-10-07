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

#app
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan-common/app/FMRadio.apk:system/app/FMRadio.apk \
	vendor/motorola/jordan-common/app/FMRadioService.apk:system/app/FMRadioService.apk \
	vendor/motorola/jordan-common/app/MotoPhonePortal.apk:system/app/MotoPhonePortal.apk \
	vendor/motorola/jordan-common/app/AudioEffectSettings.apk:system/app/AudioEffectSettings.apk \
	vendor/motorola/jordan-common/app/CompassCalibrate.apk:system/app/CompassCalibrate.apk

# basebands
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/argentina_claro_342.zip:system/etc/motorola/basebands/america/argentina_claro_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/argentina_personal_342.zip:system/etc/motorola/basebands/america/argentina_personal_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/argentina_614.zip:system/etc/motorola/basebands/america/argentina_614.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/brasil_342.zip:system/etc/motorola/basebands/america/brasil_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/brasil_claro_342.zip:system/etc/motorola/basebands/america/brasil_claro_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/brasil_claro_614.zip:system/etc/motorola/basebands/america/brasil_claro_614.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/brasil_tim_342.zip:system/etc/motorola/basebands/america/brasil_tim_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/brasil_vivo_342.zip:system/etc/motorola/basebands/america/brasil_vivo_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/colombia_tigo_342.zip:system/etc/motorola/basebands/america/colombia_tigo_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/us_tmobile_342_4.zip:system/etc/motorola/basebands/america/us_tmobile_342_4.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/us_tmobile_342_9.zip:system/etc/motorola/basebands/america/us_tmobile_342_9.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/america/us_tmobile_6xx.zip:system/etc/motorola/basebands/america/us_tmobile_6xx.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/china_25_26_210.zip:system/etc/motorola/basebands/asia/china_25_26_210.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/china_026_110.zip:system/etc/motorola/basebands/asia/china_026_110.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/china_me722_110.zip:system/etc/motorola/basebands/asia/china_me722_110.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/hktaiwan_259.zip:system/etc/motorola/basebands/asia/hktaiwan_259.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/sea_343_331.zip:system/etc/motorola/basebands/asia/sea_343_331.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/sea_343_361.zip:system/etc/motorola/basebands/asia/sea_343_361.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/asia/southkorea_342.zip:system/etc/motorola/basebands/asia/southkorea_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/australia/optus_342.zip:system/etc/motorola/basebands/australia/optus_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/australia/telstra_226.zip:system/etc/motorola/basebands/australia/telstra_226.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/central_europe_221.zip:system/etc/motorola/basebands/europe/central_europe_221.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/central_europe_234.zip:system/etc/motorola/basebands/europe/central_europe_234.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/central_europe_251.zip:system/etc/motorola/basebands/europe/central_europe_251.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/central_europe_342.zip:system/etc/motorola/basebands/europe/central_europe_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/central_europe_34x.zip:system/etc/motorola/basebands/europe/central_europe_34x.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/france_orange_342.zip:system/etc/motorola/basebands/europe/france_orange_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/france_vodafone_342.zip:system/etc/motorola/basebands/europe/france_vodafone_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/italy_251.zip:system/etc/motorola/basebands/europe/italy_251.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/poland_orange_251.zip:system/etc/motorola/basebands/europe/poland_orange_251.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/poland_orange_342.zip:system/etc/motorola/basebands/europe/poland_orange_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/uk_251.zip:system/etc/motorola/basebands/europe/uk_251.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/uk_342.zip:system/etc/motorola/basebands/europe/uk_342.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/uk_343_3.zip:system/etc/motorola/basebands/europe/uk_343_3.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/uk_343_11.zip:system/etc/motorola/basebands/europe/uk_343_11.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/uk_tmobile_221.zip:system/etc/motorola/basebands/europe/uk_tmobile_221.zip \
	vendor/motorola/jordan-common/etc/motorola/basebands/europe/uk_tmobile_251.zip:system/etc/motorola/basebands/europe/uk_tmobile_251.zip

#extra
PRODUCT_COPY_FILES += \
	vendor/motorola/jordan-common/media/Moto.ogg:system/media/audio/ringtones/Moto.ogg
