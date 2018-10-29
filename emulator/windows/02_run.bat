SET KERNEL=kernel/kernel-qemu-4.4.34-jessie
SET VM=vm/raspbian.qcow

qemu-system-arm -kernel %KERNEL% -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -hda %VM% -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -net nic -net user,hostfwd=tcp::10022-:22
