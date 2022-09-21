#!/bin/bash

# Device
export FOX_BRANCH="fox_9.0"
export DT_LINK="https://github.com/MizuNotCool/recovery_device_samsung_a10s -b ofox"

export DEVICE="a10s"
export OEM="samsung"

# Build Target
## "recoveryimage" - for A-Only Devices without using Vendor Boot
## "bootimage" - for A/B devices without recovery partition (and without vendor boot)
## "vendorbootimage" - for devices Using vendor boot for the recovery ramdisk (Usually for devices shipped with Android 12 or higher)
export TARGET="recoveryimage"

export OUTPUT="OrangeFox*.zip"

# Additional Dependencies (eg: Kernel Source)
# Format: "repo dest"
DEPS=(
    "https://github.com/MizuNotCool/avatar.git misc"
)

# Extra Command
export EXTRA_CMD="git clone https://github.com/MizuNotCool/avatar /root/avatar"
export OF_MAINTAINER=ItzKaguya
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/bootdevice/by-name/recovery"
export FOX_REPLACE_BUSYBOX_PS="1"
export FOX_USE_BASH_SHELL="1"
export FOX_USE_LZMA_COMPRESSION="1"
export FOX_USE_NANO_EDITOR="1"
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export LC_ALL="C"
export OF_DISABLE_MIUI_SPECIFIC_FEATURES="1"
export OF_DONT_PATCH_ENCRYPTED_DEVICE="1"
export OF_NO_TREBLE_COMPATIBILITY_CHECK="1"
export OF_OTA_RES_DECRYPT="1"
export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
export OF_USE_NEW_MAGISKBOOT="1"
export TARGET_ARCH="arm64"
export TW_DEFAULT_LANGUAGE="en"
export FOX_VERSION="R11.0"
export FOX_R11="1"
export USE_CCACHE="1"
export OF_FLASHLIGHT_ENABLE="1"
export OF_SCREEN_H="1520"
export FOX_BUILD_TYPE="ItzKaguya-Beta"
export FOX_ADVANCED_SECURITY="1"
export OF_FL_PATH1="/sys/devices/platform/flashlights_led191/led_flash"
export OF_TARGET_DEVICES="a10s,a10sxx
'export OF_MAINTAINER_AVATAR="/root/avatar/ItzKaguya.png"'

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
