#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 6662144 e23fd5d15a261945bf8bc057bdacb81c1b243376 4290560 fada9067055bac5281c677d65284ec2e71492f94
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:6662144:e23fd5d15a261945bf8bc057bdacb81c1b243376; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:4290560:fada9067055bac5281c677d65284ec2e71492f94 EMMC:/dev/block/mmcblk0p6 e23fd5d15a261945bf8bc057bdacb81c1b243376 6662144 fada9067055bac5281c677d65284ec2e71492f94:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
