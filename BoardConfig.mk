# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8996

# Platform
TARGET_BOARD_PLATFORM := msm8996
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=16M@0-0xffffffff coherent_pool=2M

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02200000 --tags_offset 0x02000000

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/sony/tone-dora/kernel

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5513412608
BOARD_USERDATAIMAGE_PARTITION_SIZE := 57436708864
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true

RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB = device/sony/tone-dora/recovery.fstab
TW_THEME := portrait_hdpi
TW_HAS_NO_RECOVERY_PARTITION := true
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FUSE_EXFAT := true
TW_EXTRA_LANGUAGES := true
TW_NEW_ION_HEAP := true
TW_MAX_BRIGHTNESS := 4095
TW_DEFAULT_BRIGHTNESS := 230
TW_CUSTOM_CPU_TEMP_PATH := /sys/class/thermal/thermal_zone4/temp
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_DEVICE_MODULES := libbinder libgui libui libEGL libGLES_trace libGLESv2 libprotobuf-cpp-lite libsync
TW_RECOVERY_ADDITIONAL_RELINK_FILES := $(OUT)/system/lib64/libbinder.so $(OUT)/system/lib64/libgui.so $(OUT)/system/lib64/libui.so $(OUT)/system/lib64/libEGL.so $(OUT)/system/lib64/libGLES_trace.so $(OUT)/system/lib64/libGLESv2.so $(OUT)/system/lib64/libprotobuf-cpp-lite.so $(OUT)/system/lib64/libsync.so
