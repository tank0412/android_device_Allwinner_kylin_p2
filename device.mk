$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/Allwinner/kylin_p2/kylin_p2.mk)

LOCAL_PATH := device/Allwinner/kylin_p2

#Prebuilt kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#######
#$(call inherit-product, build/target/product/full.mk)
#######
#$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
#######
#$(call inherit-product, build/target/product/full_base.mk)
#$(call inherit-product, build/target/board/generic/device.mk)
#include build/target/product/emulator.mk
#######

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

# kylin-common
#PRODUCT_PACKAGES += \
#    	libion \
#    	sensors.kylin \
#    	lights.kylin \
#    	keystore.kylin \
#	hwcomposer.kylin

# file system
#PRODUCT_PACKAGES += \
#	setup_fs \
#	e2fsck \
#	libext2fs \
#	libext2_blkid \
#	libext2_uuid \
#	libext2_profile \
#	libext2_com_err \
#	libext2_e2p \
#	make_ext4fs


# audio
PRODUCT_PACKAGES += \
	audio.primary.kylin \
	audio.a2dp.default \
	audio.usb.default  \
	audio.r_submix.default 
	
PRODUCT_COPY_FILES += \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/phone_volume.conf:system/etc/phone_volume.conf

# camera
#PRODUCT_PACKAGES += \
#	camera.kylin \
#	libjni_eglfence_awgallery \
#	libjni_mosaic

# video
#PRODUCT_PACKAGES += \
#	libcedarxbase \
#	libcedarxosal \
#	libcedarv \
#	libcedarv_base \
#	libcedarv_adapter \
#	libve \
#	libaw_audio \
#	libaw_audioa \
#	libswdrm \
#	libfacedetection \
#	libsmileeyeblink \
#	libapperceivepeople \
#	libthirdpartstream \
#	libcedarxsftstream \
#	libion_alloc \
#	libsrec_jni \
#	libcnr \
#	libjpgenc \
#	libaw_venc \
#	libaw_h264enc \
#	libaw_vp8enc  \
#	libI420colorconvert \
#	libstagefrighthw \
#	libOmxCore \
#	libOmxVenc \
#	libOmxVdec

#PRODUCT_PACKAGES += \
#	com.google.widevine.software.drm.xml \
#	com.google.widevine.software.drm \
#	libdrmwvmplugin \
#	libwvm \
#	libWVStreamControlAPI_L3 \
#	libwvdrm_L3 \
#	libdrmdecrypt \
#	libwvdrmengine

PRODUCT_COPY_FILES += \
	device/Allwinner/kylin_p2/media_codecs.xml:system/etc/media_codecs.xml

# sensor - In the vendor folder
#PRODUCT_COPY_FILES += \
#    device/Allwinner/kylin_p2/sensors.sh:system/bin/sensors.sh


#Recovery
#PRODUCT_COPY_FILES += \
#    vendor/Allwinner/kylin_p2/recovery/nand.ko:root/nand.ko \
#    vendor/Allwinner/kylin_p2/recovery/sw-device.ko:root/sw-device.ko \
#    vendor/Allwinner/kylin_p2/recovery/disp.ko:root/disp.ko \
#    vendor/Allwinner/kylin_p2/recovery/lcd.ko:root/lcd.ko \
#    vendor/Allwinner/kylin_p2/recovery/hdcp.ko:root/hdcp.ko \
#    vendor/Allwinner/kylin_p2/recovery/gt9xxnew_ts.ko:root/gt9xxnew_ts.ko

#Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/Allwinner/kylin_p2/rootdir,root)

#PRODUCT_PACKAGES += \
#	com.android.future.usb.accessory

#Modules
PRODUCT_COPY_FILES += \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/android.software.webview.xml:system/etc/permissions/android.software.webview.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/com.android.location.provider.xml:system/etc/permissions/com.android.location.provider.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/com.android.media.remotedisplay.xml:system/etc/permissions/com.android.media.remotedisplay.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/com.android.mediadrm.signer.xml:system/etc/permissions/com.android.mediadrm.signer.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/platform.xml:system/etc/permissions/platform.xml \
	vendor/Allwinner/kylin_p2/proprietary/system/etc/permissions/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

#DO NOT DELETE!!!
#PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/initlogo.rle:root/initlogo.rle


$(call inherit-product-if-exists, device/Allwinner/kylin_p2/modules/modules.mk)

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
