### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# begin properties
properties() { '
kernel.string=Sultan Kernel for the Pixel 8/Pro
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=husky
device.name2=shiba
supported.versions=15
'; } # end properties

# boot image installation
block=boot;
is_slot_device=1;
. tools/ak3-core.sh;
split_boot;
flash_boot;

# vendor_kernel_boot installation (for dtb)
block=vendor_kernel_boot;
is_slot_device=1;
reset_ak;
split_boot;
flash_boot;
