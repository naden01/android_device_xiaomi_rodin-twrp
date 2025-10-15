set +e
mod_dir="/vendor_dlkm/lib/modules"
modules=(
  focaltech_touch_rodin.ko
  xiaomi_touch_rodin.ko
  goodix_core_rodin
)

mount /vendor_dlkm
# load modules
for module in "${modules[@]}"; do
  insmod $mod_dir/$module
done
umount /vendor_dlkm