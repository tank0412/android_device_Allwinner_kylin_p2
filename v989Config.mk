LOCAL_PATH := device/onda/v989

PRODUCT_MANUFACTURER := onda
PRODUCT_MODEL := v989
PRODUCT_PACKAGES += \
 	com.android.future.usb.accessory \
 	libnetcmdiface \
     setup_fs

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/handheld_core_hardware:system/etc/permissions/handheld_core_hardware \
$(LOCAL_PATH)/frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware

 
 $(call inherit-product-if-exists, vendor/onda/v989/V989Config.mk)
