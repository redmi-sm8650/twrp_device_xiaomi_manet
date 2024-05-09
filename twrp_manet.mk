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
$(call inherit-product, vendor/twrp/config/common.mk)

$(call inherit-product, device/xiaomi/manet/device.mk)

PRODUCT_DEVICE := manet
PRODUCT_NAME := twrp_manet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K70 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_manet-eng 14 SP2A.220405.004 eng.sekaia.20240209.135617 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_manet/houji:14/SP2A.220405.004/sekaiacg02092040:eng/test-keys
