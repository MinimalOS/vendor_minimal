# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/minimal/proprietary/common/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/minimal/proprietary/common/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/minimal/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/minimal/proprietary/common/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/minimal/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

