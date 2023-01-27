#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from gta7lite device
$(call inherit-product, device/samsung/gta7lite/device.mk)

PRODUCT_DEVICE := gta7lite
PRODUCT_NAME := omni_gta7lite
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T225
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gta7litexx-user 11 RP1A.200720.012 T225XXU1AVE1 release-keys"

BUILD_FINGERPRINT := samsung/gta7litexx/gta7lite:11/RP1A.200720.012/T225XXU1AVE1:user/release-keys
