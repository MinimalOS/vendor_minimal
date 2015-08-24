PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Inherit AOSP device configuration for condor.
$(call inherit-product, device/motorola/condor/full_condor.mk)

# Inherit common product files.
$(call inherit-product, vendor/minimal/config/common.mk)

# Telephony
$(call inherit-product, vendor/minimal/config/telephony.mk)

# Inherit common build.prop overrides
-include vendor/minimal/config/common_versions.mk

# Copy condor specific prebuilt files
MINIMAL_BOOTANIMATION_VARIANT := 540

# Inherit drm blobs
-include vendor/minimal/config/common_drm.mk

# Setup device specific product configuration.
PRODUCT_NAME := minimal_condor
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := condor
PRODUCT_MODEL := Moto E
PRODUCT_MANUFACTURER := Motorola
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Set build fingerprint / ID / Product Name etc.
 PRODUCT_BUILD_PROP_OVERRIDES += \
     BUILD_FINGERPRINT="motorola/condor/condor:5.1.1/LYZ28E:userdebug/test-keys" \
     PRIVATE_BUILD_DESC="condor-userdebug 5.1.1 LYZ28E test-keys"
