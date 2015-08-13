LOCAL_PATH := device/onda/v989

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/onda/v989/blobs/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

# Ramdisk fstab / rc files
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/ramdisk/fstab.sun9i:root/fstab.sun9i \
$(LOCAL_PATH)/ramdisk/init.environ.rc:root/init.environ.rc \
$(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
$(LOCAL_PATH)/ramdisk/init.recovery.sun9i.rc:root/init.recovery.sun9i.rc \
$(LOCAL_PATH)/ramdisk/init.sun9i.rc:root/init.sun9i.rc \
$(LOCAL_PATH)/ramdisk/init.sun9i.usb.rc:root/init.sun9i.usb.rc \
$(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
$(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
$(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
$(LOCAL_PATH)/ramdisk/ueventd.sun9i.rc:root/ueventd.sun9i.rc 

# Permissions
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
