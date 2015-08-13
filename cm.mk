$(call inherit-product, device/onda/v989/full_v989.mk)
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
DEVICE_PACKAGE_OVERLAYS += device/onda/v989/overlay

DEVICE_RESOLUTION := 1536x2048
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

PRODUCT_NAME := cm_v989
PRODUCT_DEVICE := v989
PRODUCT_BRAND := Onda
PRODUCT_MODEL := ONDA_V989
PRODUCT_MANUFACTURER := onda
