# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/telephony.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 540
TARGET_SCREEN_HEIGHT := 960

# Release name
PRODUCT_RELEASE_NAME := LG_G2_mini
PRODUCT_NAME := cm_d610

$(call inherit-product, device/lge/d610/full_d610.mk)
