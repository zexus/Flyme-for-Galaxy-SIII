#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 8558592 50be66fe0330709c65a9d7dea1759d83951d3a4b 5978112 3aa4c195e1a5fc558ba34c1041bf20cecd40cfcb
fi

if ! applypatch -c EMMC:/dev/block/mmcblk0p6:8558592:50be66fe0330709c65a9d7dea1759d83951d3a4b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:5978112:3aa4c195e1a5fc558ba34c1041bf20cecd40cfcb EMMC:/dev/block/mmcblk0p6 50be66fe0330709c65a9d7dea1759d83951d3a4b 8558592 3aa4c195e1a5fc558ba34c1041bf20cecd40cfcb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
