##########################################################################################
#
# MMT Extended Config Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maximum android version for your mod
# Uncomment DYNLIB if you want libs installed to vendor for oreo+ and system for anything older
# Uncomment DEBUG if you want full debug logs (saved to /sdcard)
#MINAPI=21
#MAXAPI=25
#DYNLIB=true
#DEBUG=true

##########################################################################################
# Replace list
##########################################################################################

# List all directories you want to directly replace in the system
# Check the documentations for more info why you would need this

# Construct your list in the following format
# This is an example
REPLACE_EXAMPLE="
/system/app/Youtube
/system/priv-app/SystemUI
/system/priv-app/Settings
/system/framework
"

# Construct your own list here
REPLACE="
"

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
  : # Remove this if adding to this function

  # Note that all files/folders in magisk module directory have the $MODPATH prefix - keep this prefix on all of your files/folders
  # Some examples:
  
  # For directories (includes files in them):
  # set_perm_recursive  <dirname>                <owner> <group> <dirpermission> <filepermission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm_recursive $MODPATH/system/lib 0 0 0755 0644
  # set_perm_recursive $MODPATH/system/vendor/lib/soundfx 0 0 0755 0644

  # For files (not in directories taken care of above)
  # set_perm  <filename>                         <owner> <group> <permission> <contexts> (default: u:object_r:system_file:s0)
  
  # set_perm $MODPATH/system/lib/libart.so 0 0 0644
  # set_perm /data/local/tmp/file.txt 0 0 644
  set_perm_recursive $MODPATH  0  0  0755  0644
  set_perm_recursive $MODPATH/system/vendor/bin 0 0 0755 0644 u:object_r:vendor_firmware_file:s0
  set_perm_recursive $MODPATH/system/vendor/bin/hw 0 0 0755 0644 u:object_r:vendor_firmware_file:s0
  set_perm_recursive $MODPATH/system/vendor/bin/hw/android.hardware.graphics.composer@2.4-service 0 0 0755 0644 u:object_r:hal_graphics_composer_default_exec:s0
  set_perm_recursive $MODPATH/system/vendor/firmware 0 0 0755 0644 u:object_r:vendor_firmware_file:s0
  set_perm_recursive $MODPATH/system/vendor/etc 0 0 0755 0644 u:object_r:vendor_configs_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/ 0 0 0755 0644 u:object_r:vendor_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/libEGL_adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/libGLESv2_adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/libadreno_app_profiles.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/libq3dtools_adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/hw/vulkan.adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/hw/android.hardware.graphics.mapper@3.0-impl-qti-display.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/hw/android.hardware.graphics.mapper@4.0-impl-qti-display.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/hw/gralloc.default.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/hw/gralloc.msmnile.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/egl/ 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib/egl/egl.cfg 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/ 0 0 0755 0644 u:object_r:vendor_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/libEGL_adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/libGLESv2_adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/libadreno_app_profiles.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/libq3dtools_adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/hw/vulkan.adreno.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/hw/android.hardware.graphics.mapper@3.0-impl-qti-display.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/hw/android.hardware.graphics.mapper@4.0-impl-qti-display.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/hw/gralloc.default.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/hw/gralloc.msmnile.so 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/egl/ 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/lib64/egl/egl.cfg 0 0 0755 0644 u:object_r:same_process_hal_file:s0
  set_perm_recursive $MODPATH/system/vendor/etc/device_features 0 0 0755 0644 u:object_r:vendor_configs_file:s0
  set_perm_recursive $MODPATH/system/vendor/etc/device_features/bhima.xml 0 0 0755 0644 u:object_r:vendor_configs_file:s0
  set_perm_recursive $MODPATH/system/vendor/etc/device_features/vayu.xml 0 0 0755 0644 u:object_r:vendor_configs_file:s0
}

##########################################################################################
# MMT Extended Logic - Don't modify anything after this
##########################################################################################

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
