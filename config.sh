#!/bin/bash

# Device
export TWRP_MANIFEST="https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git"
export TWRP_BRANCH="twrp-10.0-deprecated"
export DT_LINK="https://github.com/rushiranpise/android_device_motorola_chef_twrp.git -b main"

export DEVICE="chef"
export OEM="motorola"
export TARGET="bootimage"

export OUTPUT="*.img"

# Kernel Source
# Uncomment the next line if you want to clone a kernel source.
export KERNEL_SOURCE="https://github.com/moto-SDM660/android_kernel_motorola_sdm660 -b twrp-11"
export PLATFORM="msm8998" # Leave it commented if you want to clone the kernel to kernel/$OEM/$DEVICE

# Extra Command
export EXTRA_CMD="git clone https://github.com/TeamWin/android_hardware_qcom_bootctrl -b android-10.0 hardware/qcom/bootctrl"

# Not Recommended to Change
export SYNC_PATH="$HOME/work" # Full (absolute) path.
export USE_CCACHE=1
export CCACHE_SIZE="50G"
export CCACHE_DIR="$HOME/work/.ccache"
export J_VAL=16

if [ ! -z "$PLATFORM" ]; then
    export KERNEL_PATH="kernel/$OEM/$PLATFORM"
else
    export KERNEL_PATH="kernel/$OEM/$DEVICE"
fi
export DT_PATH="device/$OEM/$DEVICE"