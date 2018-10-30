# Raspberry Pi Emulation

![alt text](https://github.com/mattwind/rpi/blob/master/rpi.png "rpi")

### Linux (Debian)

Run the build script to setup the latest rasbpian qemu compatable vm

### Windows 10

1. [install qemu](https://qemu.weilnetz.de/w64/2018/qemu-w64-setup-20180815.exe)
2. add qemu installation to your path 
3. run the build script

### SSH Access

after accessing the pi console, run `raspi-config` and under interfacing options enable ssh

connect from your local machine `ssh pi@localhost -p10022`

![alt text](https://github.com/mattwind/rpi/blob/master/raspi-config.png "raspi-config")

### Sources

https://qemu.weilnetz.de/w64/2018/qemu-w64-setup-20180815.exe

https://downloads.raspberrypi.org/raspbian/images/?C=M;O=D

https://github.com/dhruvvyas90/qemu-rpi-kernel.git

