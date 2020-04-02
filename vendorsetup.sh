#
# Copyright (C) 2019-2020 OrangeFox Recovery Project
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
# Please maintain this if you use this script or any part of it
#

FDEVICE="onclite"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
	export TARGET_DEVICE_ALT="onc"
	export FOX_DELETE_AROMAFM="1"
	export PLATFORM_VERSION="10.0.0"
	export OF_USE_MAGISKBOOT=1
	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES=1
	export OF_USE_NEW_MAGISKBOOT=1
	export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
	export OF_DONT_PATCH_ENCRYPTED_DEVICE=1
	export FOX_REPLACE_BUSYBOX_PS=1
	export FOX_USE_BASH_SHELL=1
	export FOX_USE_NANO_EDITOR=1
	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
	export OF_OTA_RES_DECRYPT=1
	export FOX_USE_TAR_BINARY=1
	export FOX_USE_ZIP_BINARY=1
	export OF_NO_RELOAD_AFTER_DECRYPTION=1
	export OF_MIUI_OTA_VENDOR_BACKUP=1
	export OF_KEEP_DM_VERITY_FORCED_ENCRYPTION=1
	export OF_FORCE_MAGISKBOOT_BOOT_PATCH_MIUI=1

	# let's see what are our build VARs
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
  	fi

	add_lunch_combo omni_"$FDEVICE"-userdebug
fi
