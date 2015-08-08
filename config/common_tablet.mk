# Inherit common stuff
$(call inherit-product, vendor/minimal/config/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/common_tablet
