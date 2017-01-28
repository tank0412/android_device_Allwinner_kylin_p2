$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/Allwinner/kylin_p2/kylin_p2.mk)

LOCAL_PATH := device/Allwinner/kylin_p2

#Prebuilt bzImage (needed for otapackage)
TARGET_PREBUILT_KERNEL:=device/Allwinner/kylin_p2/kernel

PRODUCT_AAPT_CONFIG := ldpi mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := aosp_kylin_p2
PRODUCT_DEVICE := kylin_p2

#KylinCommon
DEVICE_PACKAGE_OVERLAYS := \
	$(LOCAL_PATH)/overlay
#	$(DEVICE_PACKAGE_OVERLAYS)

PRODUCT_PACKAGES += \
	com.android.future.usb.accessory \
	libnetcmdiface \
	Stk \
	static_busybox \
	make_ext4fs \
	setup_fs

# file system
PRODUCT_PACKAGES += \
	setup_fs \
	e2fsck \
	libext2fs \
	libext2_blkid \
	libext2_uuid \
	libext2_profile \
	libext2_com_err \
	libext2_e2p \
	make_ext4fs


# audio
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default  \
	audio.r_submix.default 
	
PRODUCT_COPY_FILES += \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/phone_volume.conf:system/etc/phone_volume.conf

# camera
PRODUCT_PACKAGES += \
	libjni_eglfence_awgallery \
	libjni_mosaic

# video
PRODUCT_PACKAGES += \
	libcedarxbase \
	libcedarxosal \
	libcedarv \
	libcedarv_base \
	libcedarv_adapter \
	libve \
	libaw_audio \
	libaw_audioa \
	libswdrm \
	libfacedetection \
	libsmileeyeblink \
	libapperceivepeople \
	libthirdpartstream \
	libcedarxsftstream \
	libion_alloc \
	libsrec_jni \
	libcnr \
	libjpgenc \
	libaw_venc \
	libaw_h264enc \
	libaw_vp8enc  \
	libI420colorconvert \
	libstagefrighthw \
	libOmxCore \
	libOmxVenc \
	libOmxVdec

PRODUCT_PACKAGES += \
	com.google.widevine.software.drm.xml \
	com.google.widevine.software.drm \
	libdrmwvmplugin \
	libwvm \
	libWVStreamControlAPI_L3 \
	libwvdrm_L3 \
	libdrmdecrypt \
	libwvdrmengine


#Recovery
#PRODUCT_COPY_FILES += \
    vendor/Allwinner/kylin_p2/recovery/nand.ko:root/nand.ko \
    vendor/Allwinner/kylin_p2/recovery/sw-device.ko:root/sw-device.ko \
    vendor/Allwinner/kylin_p2/recovery/disp.ko:root/disp.ko \
    vendor/Allwinner/kylin_p2/recovery/lcd.ko:root/lcd.ko \
    vendor/Allwinner/kylin_p2/recovery/hdcp.ko:root/hdcp.ko \
    vendor/Allwinner/kylin_p2/recovery/gt9xxnew_ts.ko:root/gt9xxnew_ts.ko

#Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/Allwinner/kylin_p2/rootdir,root)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml\
    frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

#DO NOT DELETE!!!
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/initlogo.rle:root/initlogo.rle


ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0

PRODUCT_PACKAGES += \
    Launcher3

# Wi-Fi
PRODUCT_PACKAGES += \
	libwpa_client \
	hostapd \
	dhcpcd.conf \
	wpa_supplicant \
	wpa_supplicant.conf

#libion 
PRODUCT_PACKAGES += \
    libion
