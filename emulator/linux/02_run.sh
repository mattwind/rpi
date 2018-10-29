#!/bin/bash

KERNEL="./kernel/kernel-qemu-4.4.34-jessie"
VM="./vm/raspbian.qcow"
MEMORY=256

sudo qemu-system-arm \
-kernel "$KERNEL" \
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
-hda "$VM" \
-cpu arm1176 -m $MEMORY \
-M versatilepb \
-no-reboot \
-serial stdio \
-net nic -net user \
-net tap,ifname=vnet0,script=no,downscript=no,hostfwd=tcp::10022-:22
