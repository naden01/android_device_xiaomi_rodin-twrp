#!/sbin/sh
# Touch module loader for tanzanite
# Written by @linastorvaldz on GitHub
# Updated by @ramabondanp on GitHub
# Last Update: 2025/12/05

# disable exit-on-error
set +e

mod_dir="/lib/modules"
mods=(
  switch_class.ko # has no depends
  lct_tp.ko # has no depends
  mtk-afe-external.ko # has no depends
  xiaomi.ko # has no depends
  stub_scp.ko # stub module to export scp_ipidev symbol
  ft3519t.ko # finally, load the touch driver after loading its dependencies
  focaltech_touch_rodin.ko # add for rodin
  xiaomi_touch_rodin.ko # add for rodin
  goodix_core_rodin # add for rodin
)

# load the modules
for m in ${mods[@]}; do
  insmod $mod_dir/$m
done
