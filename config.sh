#!/bin/bash

# Device
export FOX_BRANCH="fox_9.0"
export DT_LINK="https://github.com/MizuNotCool/recovery_device_samsung_a10s.git -b ofox"

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
wget -O /root/Magisk-63af8db0-delta.zip "https://eunha.ovin.my.id/0:/Data/Magisk-63af8db0-delta.zip"
export FOX_USE_SPECIFIC_MAGISK_ZIP="/root/Magisk-63af8db0-delta.zip"
export EXTRA_CMD="git clone https://github.com/MizuNotCool/avatar /root/avatar"
export OF_MAINTAINER=ItzKaguya
export ALLOW_MISSING_DEPENDENCIES=true
export OF_VANILLA_BUILD=1
export OF_SKIP_ORANGEFOX_PROCESS=1
export FOX_BUILD_TYPE="ItzKaguya-Beta"
export OF_FLASHLIGHT_ENABLE=1
export OF_FL_PATH1=/sys/devices/platform/flashlights_led191/led_flash
export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
export OF_DONT_PATCH_ON_FRESH_INSTALLATION=1
export FOX_USE_NANO_EDITOR=1
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export FOX_USE_SPECIFIC_MAGISK_ZIP=/root/Magisk
export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/platform/bootdevice/by-name/recovery
export FOX_RECOVERY_SYSTEM_PARTITION=/dev/block/platform/bootdevice/by-name/system
export FOX_RECOVERY_BOOT_PARTITION=/dev/block/platform/bootdevice/by-name/boot
export FOX_RECOVERY_VENDOR_PARTITION=/dev/block/platform/bootdevice/by-name/vendor
export FOX_REPLACE_TOOLBOX_GETPROP=1
export OF_MAINTAINER_AVATAR="/root/avatar/ItzKaguya.png"

# Magisk
## Use the Latest Release of Magisk for the OrangeFox addon
export OF_USE_LATEST_MAGISK=true

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16
