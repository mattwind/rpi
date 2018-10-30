@echo off

SET RESIZE=6G

mkdir vm

if exist "raspbian\2018-10-09-raspbian-stretch-lite.img" (
  echo Converting...
  qemu-img convert -f raw -O qcow2 "raspbian/2018-10-09-raspbian-stretch-lite.img" "vm\raspbian.qcow"
  qemu-img resize "vm\raspbian.qcow" +%RESIZE%
) else (  
  type "raspbian\README.md"
  explorer "raspbian"
  pause
)
