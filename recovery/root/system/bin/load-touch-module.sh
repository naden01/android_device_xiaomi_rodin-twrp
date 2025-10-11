#!/sbin/sh
set +e
mod_dir="/lib/modules"
modules=(
  xiaomi_touch_rodin.ko
  mtk-mbox.ko
  mtk_rpmsg_mbox.ko
  mtk_tinysys_ipi.ko
  scp.ko
  focaltech_touch_rodin.ko
)

# load modules
for module in "${modules[@]}"; do
  insmod $mod_dir/$module
done

exit 0
