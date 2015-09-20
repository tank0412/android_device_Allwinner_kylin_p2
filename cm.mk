# Release name
PRODUCT_RELEASE_NAME := kylin_p2

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#DEVICE_PACKAGE_OVERLAYS += device/onda/v989/overlay

# Inherit device configuration
$(call inherit-product, device/ONDA/kylin_mb976a9/device_kylin_p2.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kylin_p2
PRODUCT_NAME := cm_kylin_p2
PRODUCT_BRAND := ONDA
#PRODUCT_MODEL := kylin_p2
PRODUCT_MANUFACTURER := ONDA

PRODUCT_CHARACTERISTICS := tablet
#PRODUCT_DEVICE := kylin-p2
PRODUCT_MODEL := ONDA V989

#Device resolution
#DEVICE_RESOLUTION := 1536x2048
#TARGET_SCREEN_HEIGHT := 2048
#TARGET_SCREEN_WIDTH := 1536
