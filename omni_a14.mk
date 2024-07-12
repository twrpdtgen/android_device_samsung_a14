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

# Inherit from a14 device
$(call inherit-product, device/samsung/a14/device.mk)

PRODUCT_DEVICE := a14
PRODUCT_NAME := omni_a14
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A145M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a14ub-user 14 UP1A.231005.007 A145MUBS4BXA1 release-keys"

BUILD_FINGERPRINT := samsung/a14ub/a14:14/UP1A.231005.007/A145MUBS4BXA1:user/release-keys
