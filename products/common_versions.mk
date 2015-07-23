# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_VERSION_TAGS=release-keys USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

MINIMAL_VERSION :=  MinimalOS-$(shell date +"%m-%d-%y")-signed

# Rom Manager properties
#PRODUCT_PROPERTY_OVERRIDES += \
#    ro.minimalversion=Minimal-$(shell date +"%m-%d-%y") \
#    ro.modversion=Minimal-$(shell date +"%m-%d-%y") \
#    ro.rommanager.developerid=Minimal
    
# ROM Statistics and ROM Identification
# PRODUCT_PROPERTY_OVERRIDES += \
# ro.romstats.url=http://iceandfire.co/stats/ \
# ro.romstats.name=XenonHD \
# ro.romstats.version=$(shell date +"%m-%d-%y") \
# ro.romstats.tframe=2

#OTA updater app
#PRODUCT_PROPERTY_OVERRIDES += \
#otaupdater.otaid=Minimal_ROM \
#otaupdater.otaversion=$(shell date +"%Y%m%d") \
#otaupdater.otatime=$(shell date +"%Y%m%d-%H%M") \
