# Raspberry Pi Emulation

![alt text](https://github.com/mattwind/rpi/blob/master/rpi.png "rpi")

### Linux (Debian)

Run the build script to setup the latest rasbpian qemu compatable vm

### Windows 10

1. [install qemu](https://qemu.weilnetz.de/w64/2018/qemu-w64-setup-20180815.exe)
2. add qemu installation to your path 
3. run the build script

### Expanding Partition

The raspi-config resize feature won't work correctly when using Qemu, a bit of modification is required.

```
cp /usr/bin/raspi-config ~
sed -i 's/mmcblk0p/sda/' ~/raspi-config
sed -i 's/mmcblk0/sda/' ~/raspi-config
sudo ~/raspi-config --expand-rootfs
sudo reboot
```

### Increase Performance

With the `raspi-confi` script you can select Option 6 to set overclock mode to 1Ghz "trubo". You can also increase the swap space.

`sudo sed -i 's/CONF_SWAPSIZE=100/CONF_SWAPSIZE=1024/' /etc/dphys-swapfile`

Reboot for changes to take.

### SSH Access

after accessing the pi console, run `raspi-config` and under interfacing options enable ssh

connect from your local machine `ssh pi@localhost -p10022`

![alt text](https://github.com/mattwind/rpi/blob/master/raspi-config.png "raspi-config")

### Sources

https://qemu.weilnetz.de/w64/2018/qemu-w64-setup-20180815.exe

https://downloads.raspberrypi.org/raspbian/images/?C=M;O=D

https://github.com/dhruvvyas90/qemu-rpi-kernel.git

