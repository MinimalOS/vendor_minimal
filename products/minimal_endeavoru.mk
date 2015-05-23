# Inherit AOSP device configuration for one x.
$(call inherit-product, device/htc/endeavoru/full_endeavoru.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Inherit GSM common stuff.
$(call inherit-product, vendor/minimal/configs/gsm.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Copy specific prebuilt files
PRODUCT_COPY_FILES +=  \
	vendor/minimal/proprietary/hybrid/hybrid_xhdpi_no_nav.conf:system/etc/beerbong/properties.conf \
    vendor/minimal/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := endeavoru
PRODUCT_NAME := minimal_endeavoru
PRODUCT_BRAND := htc_europe
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=endeavoru TARGET_DEVICE=endeavoru BUILD_FINGERPRINT="htc_europe/endeavoru/endeavoru:4.1.1/JRO03C/128187.31:user/release-keys" PRIVATE_BUILD_DESC="3.14.401.31 CL128187 release-keys"

