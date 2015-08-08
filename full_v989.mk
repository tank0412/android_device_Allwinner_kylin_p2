PRODUCT_NAME := cm_v989
PRODUCT_DEVICE := v989
PRODUCT_BRAND := Onda
PRODUCT_MODEL := ONDA_V989
PRODUCT_MANUFACTURER := onda
PRODUCT_CHARACTERISTICS := tablet
TARGET_PREBUILT_KERNEL := device/onda/v989/blobs/zImage

$(call inherit-product, device/onda/v989/device.mk)
$(call inherit-product-if-exists, vendor/onda/v989/V989Config.mk)
