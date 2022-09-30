#!/bin/bash

# Device
export FOX_BRANCH="fox_9.0"
export DT_LINK="https://gitlab.com/OrangeFox/device/j7velte.git -b fox_9.0"

export DEVICE="j7velte"
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
