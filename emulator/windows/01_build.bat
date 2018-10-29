@echo off

REM SET RESIZE=6G

if exist "raspbian\2018-10-09-raspbian-stretch-lite.img" (
  echo Converting...
  qemu-img convert -f raw -O qcow2 "raspbian/2018-10-09-raspbian-stretch-lite.img" "raspbian.qcow"
  qemu-img resize "raspbian.qcow" +%RESIZE%
) else (  
  type "raspbian\README.md"
  explorer "raspbian"
  pause
)


