#
# Copyright 2013 The Android Open-Source Project
# Copyright (C) 2015 DarkKat
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
#
# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from the darkkat vendor common configuration
$(call inherit-product, vendor/jisoo/config/common.mk)

PRODUCT_NAME := jisoo_flo
PRODUCT_DEVICE := flo
PRODUCT_BRAND := Android
PRODUCT_MODEL := Nexus 7 WIFI
PRODUCT_MANUFACTURER := ASUS

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=jisoo_flo \
    BUILD_FINGERPRINT=google/flo/flo:7.1.2/N2G47F/3318108:user/release-keys \
    PRIVATE_BUILD_DESC="flo-user 7.1.2 N2G47F 3318108 release-keys" \
    BUILD_ID=NRD91N

$(call inherit-product, device/asus/flo/device.mk)
$(call inherit-product-if-exists, vendor/asus/flo/device-vendor.mk)
