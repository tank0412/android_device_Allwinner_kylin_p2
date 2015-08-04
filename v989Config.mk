LOCAL_PATH := device/onda/v989

PRODUCT_MANUFACTURER := onda
PRODUCT_MODEL := v989
PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/blobs/zImage:kernel
PRODUCT_PACKAGES += \
 	com.android.future.usb.accessory \
 	libnetcmdiface \
     setup_fs

PRODUCT_COPY_FILES += \
frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
frameworks/native/data/etc/android.hardware.usb.accessory.xml.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml 
 
 $(call inherit-product-if-exists, vendor/onda/v989/v989Config.mk)
 $(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
