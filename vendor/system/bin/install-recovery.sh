#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6664192 fa45429fcc8f75e2473552f5269e99dbd270e7d8 4292608 10ba8a20500598e6f41bbf5549e9b0271223786b
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:6664192:fa45429fcc8f75e2473552f5269e99dbd270e7d8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4292608:10ba8a20500598e6f41bbf5549e9b0271223786b EMMC:/dev/block/mmcblk0p6 fa45429fcc8f75e2473552f5269e99dbd270e7d8 6664192 10ba8a20500598e6f41bbf5549e9b0271223786b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
