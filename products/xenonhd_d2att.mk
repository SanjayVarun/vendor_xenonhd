# Inherit AOSP device configuration for d2att.
$(call inherit-product, device/samsung/d2att/full_d2att.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/xenonhd/configs/gsm.mk)

# Inherit common product files.
$(call inherit-product, vendor/xenonhd/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xenonhd_d2att
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := d2att
PRODUCT_MODEL := SGH-I747
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2att TARGET_DEVICE=d2att BUILD_FINGERPRINT="samsung/d2uc/d2att:4.0.4/IMM76D/I747UCALH9:user/release-keys" PRIVATE_BUILD_DESC="d2att-user 4.0.4 IMM76D I747UCALH9 release-keys"

# Copy d2 specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xenonhd/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/xenonhd/proprietary/d2-common/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
	vendor/xenonhd/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/xenonhd/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
    
# Inherit common build.prop overrides
-include vendor/xenonhd/products/common_versions.mk

# Inherit drm blobs
-include vendor/xenonhd/products/common_drm.mk
