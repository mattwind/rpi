# Raspberry Pi Stuff

### emulator

`build_emulation_env.sh` will setup the latest rasbpian qemu compatable vm

once it's finished access the vm one of the run scripts.

#### using with windows 10

install qemu from the following link in sources

#### ssh access

after accessing the pi console, run `raspi-config` and under interfacing options enable ssh

connect from your local machine `ssh pi@localhost -p10022`

![alt text](https://github.com/mattwind/rpi/blob/master/raspi-config.png "raspi-config")

### sources

https://qemu.weilnetz.de/w64/2018/qemu-w64-setup-20180815.exe

https://downloads.raspberrypi.org/raspbian/images/?C=M;O=D

https://github.com/dhruvvyas90/qemu-rpi-kernel.git

