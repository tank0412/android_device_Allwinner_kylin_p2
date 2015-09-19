# inherit from the proprietary version
-include vendor/ONDA/kylin_mb976a9/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
#TARGET_NO_KERNEL := true
#BUILD_KERNEL_MODULES := false
TARGET_NO_RECOVERY := false
TARGET_BOARD_PLATFORM := kylin
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USES_ION := true
TARGET_USES_NEON_OPTIMIZATION := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a15 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a15 -mfpu=neon -mfloat-abi=softfp
ENABLE_WEBGL := true
BOARD_EGL_NEEDS_LEGACY_FB := true
# Workaround for no SYNC support
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

TARGET_BOOTLOADER_BOARD_NAME := exdroid

BOARD_KERNEL_CMDLINE := console=ttyS0,115200 root=/dev/mmcblk0p7 init=/init vmalloc=384M coherent_pool=8M cma_reserve=640M loglevel=4 partitions=bootloader@mmcblk0p2:env@mmcblk0p5:boot@mmcblk0p6:system@mmcblk0p7:data@mmcblk0p8:misc@mmcblk0p9:recovery@mmcblk0p10:cache@mmcblk0p11:metadata@mmcblk0p12:private@mmcblk0p13:UDISK@mmcblk0p1 boot_type=2 config_size=59044

BOARD_KERNEL_BASE := 0x20000000
BOARD_KERNEL_PAGESIZE := 2048

DISABLE_DEXPREOPT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Using partitions table from CleanONDA210&213
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 792618598 #755.9 MB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 8482560409 #7.9 GB
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_KERNEL_SOURCE := kernel/ONDA/kylin_mb976a9
TARGET_KERNEL_CONFIG := sun9iw1p1smp_android_defconfig

TARGET_PREBUILT_KERNEL := device/ONDA/kylin_mb976a9/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

BOARD_HAS_BLUETOOTH := true

BOARD_CHARGER_ENABLE_SUSPEND := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

CEDARX_CHIP_VERSION := F39

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.vold.switchexternal=1

#CUSTOM_KERNEL_ALSPS = gt9xx
#CUSTOM_KERNEL_TOUCHPANEL := GT9XX
#CUSTOM_KERNEL_TOUCHPANEL := gt9xxnew_ts

#Video
BOARD_EGL_CFG := vendor/ONDA/kylin_mb976a9/system/lib/egl/egl.cfg
USE_OPENGL_RENDERER := true

#Camera
USE_CAMERA_STUB := true

#Policies
BOARD_SEPOLICY_DIRS := \
	device/ONDA/kylin_mb976a9/sepolicy

BOARD_SEPOLICY_UNION := \
	app.te \
	device.te \
	domain.te \
	installd.te \
	mediaserver.te \
	mount.te \
	surfaceflinger.te \
	system.te \
	vold.te \
	zygote.te

#BOARD_SEPOLICY_UNION := \
#	app.te \
#	device.te \
#	domain.te \
#	file_contexts \
#	genfs_contexts \
#	healthd.te \
#	installd.te \
#	mediaserver.te \
#	mount.te \
#	netd.te \
#	surfaceflinger.te \
#	system.te \
#	untrusted_app.te \
#	vold.te \
#	zygote.te

#Recovery
SW_BOARD_TOUCH_RECOVERY := true
TARGET_RECOVERY_FSTAB = device/ONDA/kylin_mb976a9/recovery/fstab.kylin_mb976a
RECOVERY_FSTAB_VERSION = 2

#CWM
RECOVERY_SDCARD_ON_DATA := false
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/by-name/UDISK  # /sdcard vfat /dev/block/by-name/UDISK
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/by-name/UDISK # /sdcard vfat /dev/block/by-name/UDISK
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p1	     	 # /sdext vfat /dev/block/mmcblk1p1

BOARD_CUSTOM_RECOVERY_KEYMAPPING := kylin_mb976a9/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

PRODUCT_PROPERTY_OVERRIDES += \
	persist.service.adb.enable=1 \
	qemu.hw.mainkeys=0

# TWRP
#DEVICE_RESOLUTION := 1536x2048
#RECOVERY_SDCARD_ON_DATA := false
#BOARD_HAS_NO_REAL_SDCARD := false
#TW_INTERNAL_STORAGE_PATH := "/storage/sdcard0"
#TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard0"
#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

