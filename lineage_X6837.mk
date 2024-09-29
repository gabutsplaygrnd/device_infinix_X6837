#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
USE_PIXEL_CHARGER := true
-include vendor/lineage-priv/keys/keys.mk

# Inherit from X6837 device
$(call inherit-product, device/infinix/X6837/device.mk)

BOARD_VENDOR := Infinix
PRODUCT_NAME := lineage_X6837
PRODUCT_DEVICE := X6837
PRODUCT_MANUFACTURER := INFINIX
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6837

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_infinix-user 13 TP1A.220624.014 526124 release-keys" \
    PRODUCT_NAME=X6837-OP

BUILD_FINGERPRINT := Infinix/X6837-OP/Infinix-X6837:13/TP1A.220624.014/240313V1154:user/release-keys

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
