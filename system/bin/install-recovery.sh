#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:9218048:0486b3fe76d0c6c227841f3c23c48c970dfae522; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8607744:e653e52160dc14ee2eec75b2724ab7abebe82e72 EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 0486b3fe76d0c6c227841f3c23c48c970dfae522 9218048 e653e52160dc14ee2eec75b2724ab7abebe82e72:/system/recovery-from-boot.p && echo "
Installing new recovery image: succeeded
" >> /cache/recovery/log || echo "
Installing new recovery image: failed
" >> /cache/recovery/log
else
  log -t recovery "Recovery image already installed"
fi
