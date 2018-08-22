#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7970816 5525575a08a92101a7101126fda84b49313260c8 4872192 56a3bb3e7c4190c55c5a530a217f63f3e56dc7ca
fi
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc/by-name/RECOVERY:7970816:5525575a08a92101a7101126fda84b49313260c8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/dw_mmc/by-name/BOOT:4872192:56a3bb3e7c4190c55c5a530a217f63f3e56dc7ca EMMC:/dev/block/platform/dw_mmc/by-name/RECOVERY 5525575a08a92101a7101126fda84b49313260c8 7970816 56a3bb3e7c4190c55c5a530a217f63f3e56dc7ca:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
