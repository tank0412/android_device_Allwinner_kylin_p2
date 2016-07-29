#CPU info
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true
BOARD_USES_SECURE_SERVICES := true
TARGET_USE_NEON_OPTIMIZATION := true
TARGET_ARCH_LOWMEM := false
TARGET_BOARD_PLATFORM := kylin
TARGET_BOOTLOADER_BOARD_NAME := exdroid
TARGET_USES_ION := true

TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false

BOARD_EGL_CFG := device/Allwinner/kylin_p2/configs/egl.cfg

DISABLE_DEXPREOPT := true

#We do not have source of touch screen driver
BOARD_USE_LEGACY_TOUCHSCREEN := true

#Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 792618598 #755.9 MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27702539059 #25.8 GB
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_SELECT_BUTTON := true

#Bluetooth
BOARD_HAS_BLUETOOTH := true

# NFC
BOARD_HAVE_NFC := false

BOARD_CHARGER_ENABLE_SUSPEND := true

#Ext sd
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# audio & camera & cedarx
CEDARX_CHIP_VERSION := F39

# widevine
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

#CUSTOM_KERNEL_ALSPS = gt9xx
#CUSTOM_KERNEL_TOUCHPANEL := GT9XX
#CUSTOM_KERNEL_TOUCHPANEL := gt9xxnew_ts

#Video
USE_OPENGL_RENDERER := true

#Camera
USE_CAMERA_STUB := true

#OTA
BLOCK_BASED_OTA :=false
TARGET_USES_BLOCK_BASED_OTA=false

#Audio
BOARD_USES_GENERIC_AUDIO := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true


#Overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0

# Selinux
BOARD_SEPOLICY_DIRS += \
    device/Allwinner/kylin_p2/selinux

BOARD_SEPOLICY_UNION += \
    bluetooth.te \
    device.te \
    dhcp.te \
    domain.te \
    drmserver.te \
    dumpstate.te \
    file.te \
    file_contexts \
    healthd.te \
    init.te \
    init_shell.te \
    mac_update.te \
    mediaserver.te \
    mount.te \
    netd.te \
    recovery.te \
    rild.te \
    sdcardd.te \
    sensors.te \
    shell.te \
    surfaceflinger.te \
    system_app.te \
    system_server.te \
    ueventd.te \
    unconfined.te \
    untrusted_app.te \
    vold.te \
    mngblt.te \
    wpa_supplicant.te \
    wpa.te \
    zygote.te \

#Recovery
#SW_BOARD_TOUCH_RECOVERY := true
#TARGET_RECOVERY_FSTAB = device/Allwinner/kylin_p2/recovery/fstab.sun9i
#RECOVERY_FSTAB_VERSION = 2

#CWM
#RECOVERY_SDCARD_ON_DATA := false
#BOARD_USE_USB_MASS_STORAGE_SWITCH := true
#BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/by-name/UDISK  # /sdcard vfat /dev/block/by-name/UDISK
#BOARD_HAS_SDCARD_INTERNAL := true
#BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/by-name/UDISK # /sdcard vfat /dev/block/by-name/UDISK
#BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1	     	 # /sdext vfat /dev/block/mmcblk1p1

#BOARD_CUSTOM_RECOVERY_KEYMAPPING := kylin_p2/recovery_keys.c
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"


# TWRP
#DEVICE_RESOLUTION := 1536x2048
#RECOVERY_SDCARD_ON_DATA := false
#BOARD_HAS_NO_REAL_SDCARD := false
#TW_INTERNAL_STORAGE_PATH := "/storage/sdcard0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard0"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

# inherit from the proprietary version
-include vendor/Allwinner/kylin_p2/kylin_p2-vendor-blobs.mk

