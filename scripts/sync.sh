#!/bin/bash

# Source Vars
source $CONFIG

# Change to the Home Directory
cd ~

# Clone the Sync Repo
mkdir twrp
cd twrp
repo init $TWRP_MANIFEST -b $TWRP_BRANCH --depth=1 
repo sync || { echo "ERROR: Failed to Sync TWRP Sources!" && exit 1; }

# Clone Trees
git clone $DT_LINK $DT_PATH || { echo "ERROR: Failed to Clone the Device Trees!" && exit 1; }

# Clone the Kernel Sources
# only if the Kernel Source is Specified in the Config
[ ! -z "$KERNEL_SOURCE" ] && git clone --depth=1 --single-branch $KERNEL_SOURCE $KERNEL_PATH

# Exit
exit 0