# Inherit AOSP device configuration for mako.
$(call inherit-product, device/lge/mako/full_mako.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy mako specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 720

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_mako
PRODUCT_BRAND := google
PRODUCT_DEVICE := mako
PRODUCT_MODEL := Nexus 4
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRODUCT_NAME=occam \
   BUILD_FINGERPRINT=google/occam/mako:5.1.1/LMY48I/2074855:user/release-keys \
   PRIVATE_BUILD_DESC="occam-user 5.1.1 LYZ28E 1914015 release-keys"
