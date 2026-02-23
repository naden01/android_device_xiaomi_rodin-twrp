#
# Copyright (C) 2025 The Custom Recovery Project
# SPDX-License-Identifier: Apache-2.0
#

# Core AOSP Product Inherits
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit Custom Recovery Base (OrangeFox/TWRP)
$(call inherit-product, $(LOCAL_PATH)/fox.mk)

# Enable Dynamic Partitions and Virtual A/B (VAB) support
PRODUCT_USE_DYNAMIC_PARTITIONS := true
ENABLE_VIRTUAL_AB := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Enable A/B updates
AB_OTA_UPDATER := true

# List all A/B partitions (including vendor-specific partitions like mi_ext/dlkm)
AB_OTA_PARTITIONS += \
    boot \
    dtbo \
    product \
    system \
    system_ext \
    mi_ext \
    odm_dlkm \
    vbmeta \
    vbmeta_system \
    vbmeta_vendor \
    vendor \
    vendor_dlkm \
    vendor_boot

# Post-Install configuration for system updates
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=erofs \
    POSTINSTALL_OPTIONAL_system=true

# Security & Decryption (Keymaster/Keystore 2.0 & Gatekeeper)
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1 \
    android.hardware.keymaster@4.1-service \
    android.system.keystore2 \
    android.hardware.security.keymint \
    android.hardware.security.secureclock \
    android.hardware.security.sharedsecret \
    android.hardware.gatekeeper@1.0-service

# Boot Control (Required for A/B slot management)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-mtkimpl \
    android.hardware.boot@1.2-mtkimpl.recovery \
    android.hardware.boot@1.2-service \
    fastbootd \
    android.hardware.fastboot@1.0-impl-mock

# Health, OTA, and Mediatek Tools
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-service \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload \
    create_pl_dev \
    create_pl_dev.recovery \
    init.mt6899.rc

# Libraries required by the recovery binary (Decryption/FBE)
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libpuresoftkeymasterdevice \
    libkeymint \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    lib_android_keymaster_keymint_utils \
    libkeymaster4support \
    libkeymaster_messages \
    libkeymaster_portable \
    android.system.keystore2 \
    vendor.mediatek.hardware.keymaster@3.0 \
    libxml2 \
    libvndksupport

# Copying vendor-specific TEE/Mitee libraries to the recovery root
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/vendor/lib64/libteecli.so:recovery/root/vendor/lib64/libteecli.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib64/libTEECommon.so:recovery/root/vendor/lib64/libTEECommon.so \
    $(LOCAL_PATH)/prebuilt/vendor/lib64/hw/gatekeeper.mitee.so:recovery/root/vendor/lib64/hw/gatekeeper.mitee.so \

# Ensure vendor-specific libraries are correctly linked for TWRP binary execution
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymint.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_portable.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_messages.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/vendor.mediatek.hardware.keymaster@3.0.so

# Define API and VNDK versions
PRODUCT_SHIPPING_API_LEVEL := 34
PRODUCT_TARGET_VNDK_VERSION := 34

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += $(LOCAL_PATH)
