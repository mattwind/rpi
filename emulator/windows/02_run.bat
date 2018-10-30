SET KERNEL=kernel/kernel-qemu-4.4.34-jessie
SET VM=vm/raspbian.qcow
SET MEM="256"
SET CPU="arm1176"
SET MODEL="versatilepb"
SET DISPLAY="-nographic -vnc :0"
REM DISPLAY="-display sdl"

qemu-system-arm -kernel %KERNEL% -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda %VM% -cpu %CPU% -m %MEM% -M %MODEL% %DISPLAY% -no-reboot -serial stdio -net nic -net user,hostfwd=tcp::10022-:22
