LOCAL_PATH := device/onda/v989

TARGET_PREBUILT_KERNEL := device/onda/v989/kernel

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

# Ramdisk fstab / rc files
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/ramdisk/fstab.sun9i:root/fstab.sun9i \
$(LOCAL_PATH)/ramdisk/init.common.rc:root/init.common.rc \
$(LOCAL_PATH)/ramdisk/init.environ.rc:root/init.environ.rc \
$(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
$(LOCAL_PATH)/ramdisk/init.recovery.sun9i.rc:root/init.recovery.sun9i.rc \
$(LOCAL_PATH)/ramdisk/init.sun9i.rc:root/init.sun9i.rc \
$(LOCAL_PATH)/ramdisk/init.sun9i.usb.rc:root/init.sun9i.usb.rc \
$(LOCAL_PATH)/ramdisk/init.trace.rc:root/init.trace.rc \
$(LOCAL_PATH)/ramdisk/init.usb.rc:root/init.usb.rc \
$(LOCAL_PATH)/ramdisk/init.zygote32.rc:root/init.zygote32.rc \
$(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
$(LOCAL_PATH)/ramdisk/ueventd.sun9i.rc:root/ueventd.sun9i.rc 

# Permissions
PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
$(LOCAL_PATH)/frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml 

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant


# video decoder encoder
PRODUCT_PACKAGES += \
    libOMXVideoDecoderAVC \
    libOMXVideoDecoderH263 \
    libOMXVideoDecoderMPEG4 \
    libOMXVideoDecoderWMV \
    libOMXVideoEncoderAVC \
    libOMXVideoEncoderH263 \
    libOMXVideoEncoderMPEG4 \
    libOMXVideoDecoderAVCSecure

# image decover
PRODUCT_PACKAGES += \
    libmix_imagedecoder \
    libmix_imageencoder

# Media SDK and OMX IL components
PRODUCT_PACKAGES += \
    msvdx_bin \
    topaz_bin


PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.usb.default \
    audio.primary.default



