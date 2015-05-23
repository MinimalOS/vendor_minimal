# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/htc/m7tmo/full_m7tmo.mk)

    # Specify phone tech before including full_phone
    $(call inherit-product, vendor/minimal/configs/gsm.mk)
     
    # Release name
    PRODUCT_RELEASE_NAME := m7tmo
     
    $(call inherit-product, vendor/minimal/products/common.mk)
     
    # Inherit device configuration
    $(call inherit-product, device/htc/m7tmo/device_m7tmo.mk)
     
    # Inherit common build.prop overrides
    -include vendor/minimal/products/common_versions.mk
     
    # Inherit drm blobs
    -include vendor/minimal/products/common_drm.mk
     
    # Device naming
    PRODUCT_DEVICE := m7tmo
    PRODUCT_NAME := minimal_m7tmo
    PRODUCT_BRAND := htc
    PRODUCT_MODEL := HTC One
    PRODUCT_MANUFACTURER := HTC
     
     
    # Set build fingerprint / ID / Product Name ect.
    PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_m7 BUILD_ID=JZO54K BUILD_FINGERPRINT="htc/m7/m7:4.1.2/JZO54K/166937.7:user/release-keys" PRIVATE_BUILD_DESC="1.29.651.7 CL166937 release-keys"
     
    PRODUCT_COPY_FILES += \
            vendor/minimal/proprietary/hybrid/hybrid_m7_no_nav.conf:system/etc/beerbong/properties.conf \
        vendor/minimal/proprietary/m7/media/bootanimation.zip:system/media/bootanimation.zip# Specify phone tech before including full_phone
    $(call inherit-product, vendor/minimal/configs/gsm.mk)
     

     
     

     


