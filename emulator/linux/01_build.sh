#!/bin/bash

WORKING_DIR=`pwd`
KERNEL_URL="https://raw.githubusercontent.com/dhruvvyas90/qemu-rpi-kernel/master/kernel-qemu-4.4.34-jessie"
RASPBIAN_LITE_URL="http://director.downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2018-10-11/2018-10-09-raspbian-stretch-lite.zip"
RESIZE_AMMOUNT="6G"

# Tools
sudo apt-get -y install qemu-system zip unzip

# Kernel
mkdir -p "$WORKING_DIR/kernel"
cd "$WORKING_DIR/kernel"
if [ ! -f kernel-qemu-4.4.34-jessie ]; then
  wget "$KERNEL_URL"
fi

# Raspbian
mkdir -p "$WORKING_DIR/raspbian"
cd "$WORKING_DIR/raspbian"
if [ ! -f 2018-10-09-raspbian-stretch-lite.zip ]; then
  wget "$RASPBIAN_LITE_URL"
fi
rm -rf ./2018-10-09-raspbian-stretch-lite.img
unzip 2018-10-09-raspbian-stretch-lite.zip

# Convert
rm -rf "$WORKING_DIR/vm/*"
mkdir -p "$WORKING_DIR/vm"
qemu-img convert -f raw -O qcow2 "$WORKING_DIR/raspbian/2018-10-09-raspbian-stretch-lite.img" "$WORKING_DIR/vm/raspbian.qcow"
qemu-img resize "$WORKING_DIR/vm/raspbian.qcow" +$RESIZE_AMOUNT

echo
echo "Finished setup. Try it out, bash run_rpi.sh"
