# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
    vendor/minimal/prebuilt/common/lib/libWVphoneAPI.so:system/lib/libWVphoneAPI.so \
    vendor/minimal/prebuilt/common/vendor/lib/libwvdrm_L3.so:system/vendor/lib/libwvdrm_L3.so \
    vendor/minimal/prebuilt/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
    vendor/minimal/prebuilt/common/vendor/lib/libWVStreamControlAPI_L3.so:system/vendor/lib/libWVStreamControlAPI_L3.so \
    vendor/minimal/prebuilt/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

