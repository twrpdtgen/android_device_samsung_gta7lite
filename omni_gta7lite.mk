#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
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
    PRIVATE_BUILD_DESC="gta7litexx-user 12 SP1A.210812.016 T225XXU8EXH2 release-keys"

BUILD_FINGERPRINT := samsung/gta7litexx/gta7lite:12/SP1A.210812.016/T225XXU8EXH2:user/release-keys
