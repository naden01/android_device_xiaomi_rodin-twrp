set +e
mod_dir="/vendor_dlkm/lib/modules"
modules=(
  xiaomi_touch_rodin.ko
  scp.ko
  focaltech_touch_rodin.ko
)

mount /vendor_dlkm
# load modules
for module in "${modules[@]}"; do
  insmod $mod_dir/$module
done
umount /vendor_dlkm