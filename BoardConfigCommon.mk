USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/lge/star-common/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_HAVE_TEGRA_ERRATA_657451 := true

TARGET_SPECIFIC_HEADER_PATH := device/lge/star-common/include

#TARGET_USERIMAGES_USE_EXT4 := true

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_USES_OLD_LIBSENSORS_HAL:=true

#BOARD_USES_GENERIC_AUDIO := true
BOARD_PREBUILT_LIBAUDIO := true
# Use dirty hack to allow froyo libaudio
BOARD_USE_KINETO_COMPATIBILITY := true
BOARD_USES_FROYO_AUDIOPOLICY := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

BOARD_USE_FROYO_LIBCAMERA := true
BOARD_HAS_LGE_FFC := true
BOARD_NO_RGBX_8888 := true
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_SUPPORTS_GRALLOC_FB_READ := ../../../device/lge/star-common/include/hardware/gralloc.h
TARGET_OVERLAY_ALWAYS_DETERMINES_FORMAT := true

BOARD_HAS_NO_MISC_PARTITION := true

BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_FW_STA_PATH		:= "/system/etc/wl/rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH		:= "/system/etc/wl/rtecdc-apsta.bin"
WIFI_DRIVER_MODULE_NAME		:= "wireless"
WIFI_DRIVER_MODULE_PATH		:= "/system/lib/modules/wireless.ko"
WIFI_DRIVER_MODULE_ARG		:= "firmware_path=/etc/wl/rtecdc.bin nvram_path=/etc/wl/nvram.txt config_path=/data/misc/wifi/config"
WPA_SUPPLICANT_VERSION		:= VER_0_6_X
WIFI_DRIVER_HAS_LGE_SOFTAP	:= true

BOARD_WPA_SUPPLICANT_DRIVER := WEXT

BOARD_USES_GPSSHIM := true
BOARD_GPS_LIBRARIES := libgps
## SUPL calls are causing crashes... :/
BOARD_GPS_BAD_AGPS := true

BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/lge/star-common/vibrator.c

BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_RECOVERY_PRE_COMMAND := "/system/bin/setup-recovery"

#BOARD_USES_HW_MEDIARECORDER := true
#BOARD_USES_HW_MEDIASCANNER := true
#BOARD_USES_HW_MEDIAPLUGINS := true
BOARD_USE_YUV420P_DEFAULT_COLORFORMAT := true

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/lge/star-common/recovery/recovery_ui.c
