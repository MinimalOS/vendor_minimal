# Inherit AOSP device configuration for d2lte.
$(call inherit-product, device/samsung/d2spr/full_d2spr.mk)
$(call inherit-product, vendor/minimal/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := minimal_d2spr
PRODUCT_DEVICE := d2spr
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := d2spr

# Copy d2 specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/minimal/proprietary/hybrid/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/d2-common/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
	vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
    
# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk
