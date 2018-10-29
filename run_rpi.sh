#!/bin/bash

KERNEL="./kernel/kernel-qemu-4.14.50-stretch"
VM="./vm/raspbian.qcow"

sudo qemu-system-arm \
-kernel "$KERNEL" \
-append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" \
-hda "$VM" \
-cpu arm1176 -m 256 \
-M versatilepb \
-no-reboot \
-serial stdio \
-net nic -net user \
-net tap,ifname=vnet0,script=no,downscript=no
