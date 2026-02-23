#       This file is part of the OrangeFox Recovery Project
#       Copyright (C) 2024-2025 The OrangeFox Recovery Project
#
#       OrangeFox is free software: you can redistribute it and/or modify
#       it under the terms of the GNU General Public License as published by
#       the Free Software Foundation, either version 3 of the License, or
#       any later version.
#
#       OrangeFox is distributed in the hope that it will be useful,
#       but WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#       GNU General Public License for more details.
#
#       This software is released under GPL version 3 or any later version.
#       See <http://www.gnu.org/licenses/>.
#
#       Please maintain this if you use this script or any part of it
#

# Maintainer
OF_MAINTAINER := noticesa00

# screen settings
OF_SCREEN_H := 2400
OF_STATUS_H := 87
OF_HIDE_NOTCH := 1
OF_STATUS_INDENT_LEFT := 85
OF_STATUS_INDENT_RIGHT := 85
OF_CLOCK_POS := 1
OF_ALLOW_DISABLE_NAVBAR := 0

# other stuff
OF_QUICK_BACKUP_LIST := /boot;/data;
OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
OF_DYNAMIC_FULL_SIZE := 9126805504
OF_ENABLE_ALL_PARTITION_TOOLS := 1
OF_USE_GREEN_LED := 0
OF_FLASHLIGHT_ENABLE := 0
OF_FORCE_CASEFOLDING := 1

# number of list options before scrollbar creation
OF_OPTIONS_LIST_NUM := 9

# ----- data format stuff -----
OF_UNBIND_SDCARD_F2FS := 1
OF_FORCE_DATA_FORMAT_F2FS := 1
OF_USE_DMCTL := 1
OF_WIPE_METADATA_AFTER_DATAFORMAT := 1
OF_BIND_MOUNT_SDCARD_ON_FORMAT := 1

# misc behaviour
OF_LOOP_DEVICE_ERRORS_TO_LOG := 1
OF_USE_LZ4_COMPRESSION := 1

# Virtual A/B / vanilla behaviour (disable OrangeFox patching extras)
FOX_VIRTUAL_AB_DEVICE := 1
FOX_VANILLA_BUILD := 1
OF_NO_REFLASH_CURRENT_ORANGEFOX := 1
OF_SKIP_ORANGEFOX_PROCESS := 1
OF_DONT_PATCH_ENCRYPTED_DEVICE := 1
OF_DONT_PATCH_ON_FRESH_INSTALLATION := 1
OF_KEEP_DM_VERITY_FORCED_ENCRYPTION := 1
OF_KEEP_FORCED_ENCRYPTION := 1

# keymaster ver
OF_DEFAULT_KEYMASTER_VERSION := 4.1

# battery service
OF_USE_LEGACY_BATTERY_SERVICES := 1

