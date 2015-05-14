# Inherit common stuff
$(call inherit-product, vendor/minimal/products/common.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/minimal/overlay/common_tablet
