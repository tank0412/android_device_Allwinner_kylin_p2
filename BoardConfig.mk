TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a15
TARGET_BOARD_PLATFORM := kylin
TARGET_PREBUILT_KERNEL := device/onda/v989/kernel

#Partitions table from Lollipop 
BOARD_NAND_PAGE_SIZE := 4096
BOARD_NAND_SPARE_SIZE := 128
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 #2GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27702539059.2 #25.8GB
TARGET_USERIMAGES_USE_EXT4 := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := true

BOARD_USES_GENERIC_AUDIO := true
USE_CAMERA_STUB := true
DISABLE_DEXPREOPT := true
BOARD_USE_LEGACY_TOUCHSCREEN := true
ANDROID_COMMON_BUILD_MK := true
USE_OPENGL_RENDERER := true

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true


