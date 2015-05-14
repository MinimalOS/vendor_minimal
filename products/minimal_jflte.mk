# Inherit AOSP device configuration for jflte.
$(call inherit-product, device/samsung/jflte/full_jflte.mk)
$(call inherit-product, vendor/minimal/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := minimal_jflte
PRODUCT_BRAND := Samsung
PRODUCT_DEVICE := jflte
PRODUCT_MODEL := jflte
PRODUCT_MANUFACTURER := Samsung

# Copy d2 specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/d2-common/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
	vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd
    
# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Inherit common Verizon Wireless Perms and Lib
$(call inherit-product, vendor/minimal/configs/vzw.mk)

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk
