#!/bin/bash

# Source Vars
source $CONFIG

# Change to the Source Directory
cd $SYNC_PATH

cd out/target/product/${DEVICE}
curl -sL $OUTFILE https://git.io/file-transfer | sh
./transfer wet *.img