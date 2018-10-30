SET KERNEL=kernel/kernel-qemu-4.4.34-jessie
SET VM=vm/raspbian.qcow
SET MEM="256"
SET CPU="arm1176"
SET MODEL="versatilepb"

qemu-system-arm -kernel %KERNEL% -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda %VM% -cpu %CPU% -m %MEM% -M %MODEL% -display sdl -no-reboot -serial stdio -net nic -net user,hostfwd=tcp::10022-:22
