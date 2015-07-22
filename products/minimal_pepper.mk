# Inherit AOSP device configuration for pepper.
$(call inherit-product, device/sony/pepper/full_pepper.mk)

# Inherit from the common montblanc definitions
$(call inherit-product, device/sony/montblanc-common/montblanc.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/products/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/configs/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/products/common_versions.mk

# Device specific settings overlays
DEVICE_PACKAGE_OVERLAYS += \
	device/sony/pepper/overlay

# Copy pepper specific prebuilt files
PRODUCT_COPY_FILES +=  \
    device/sony/pepper/prebuilt/bootanimation.zip:system/media/bootanimation.zip \
    vendor/minimal/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/minimal/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Inherit drm blobs
-include vendor/minimal/products/common_drm.mk

# Setup device specific product configuration.
	PRODUCT_BRAND := sony
	PRODUCT_DEVICE := pepper
	PRODUCT_MANUFACTURER := Sony
	PRODUCT_MODEL := Xperia Sola
	PRODUCT_NAME := minimal_pepper
