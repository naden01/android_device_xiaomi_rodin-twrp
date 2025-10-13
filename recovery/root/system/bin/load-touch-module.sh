#!/sbin/sh
set +e
mod_dir="/lib/modules"
modules=(
  focaltech_touch_rodin.ko
)

# load modules
for module in "${modules[@]}"; do
  insmod $mod_dir/$module
done

exit 0
