#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2024-2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

# maintainer
OF_MAINTAINER := Nazephyrus

# screen settings
OF_SCREEN_H := 2712
OF_STATUS_H := 87
OF_HIDE_NOTCH := 1
OF_STATUS_INDENT_LEFT := 85
OF_STATUS_INDENT_RIGHT := 85
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0

# other stuff
OF_QUICK_BACKUP_LIST := /boot;/data;
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_DYNAMIC_FULL_SIZE := 9121562624
OF_NO_REFLASH_CURRENT_ORANGEFOX := 1
OF_ENABLE_ALL_PARTITION_TOOLS := 1
OF_FLASHLIGHT_ENABLE := 0
OF_FORCE_CASEFOLDING := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 9

# ----- data format stuff -----
# ensure that /sdcard is bind-unmounted before f2fs data repair or format
OF_UNBIND_SDCARD_F2FS := 1
OF_FORCE_DATA_FORMAT_F2FS := 1

# use dmctl to work around problems with formatting the /data partition
OF_USE_DMCTL := 1

# automatically wipe /metadata after data format
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1

# avoid MTP issues after data format
OF_BIND_MOUNT_SDCARD_ON_FORMAT := 1

# don't spam the console with loop errors
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1

# lz4 compression
OF_USE_LZ4_COMPRESSION := 1
#
