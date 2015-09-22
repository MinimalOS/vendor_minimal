# Version information used on all builds
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_VERSION_TAGS=release-keys \
    USER=android-build BUILD_UTC_DATE=$(shell date +"%s")

# Minimal Release Version
MINIMAL_VERSION_MAJOR = 3
MINIMAL_VERSION_MINOR = 0

VERSION := $(MINIMAL_VERSION_MAJOR).$(MINIMAL_VERSION_MINOR)

# BUILDTYPE should be set by Minimal Devs/Maintainers only
# Set MINIMAL_BUILDTYPE
ifdef MINIMAL_UNOFFICIAL
    MINIMAL_BUILDTYPE := UNOFFICIAL
endif
ifdef MINIMAL_OFFICIAL
    MINIMAL_BUILDTYPE := OFFICIAL
endif
ifdef MINIMAL_RELEASE
    MINIMAL_BUILDTYPE := RELEASE
endif

# Set UNOFFICIAL if no buildtype set
ifdef MINIMAL_BUILDTYPE
else
    MINIMAL_BUILDTYPE := UNOFFICIAL
    MINIMAL_VERSION_MAJOR := 3
    MINIMAL_VERSION_MINOR := 0
endif

# System props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.minimalversion=MinimalOS-v$(VERSION)-$(MINIMAL_BUILDTYPE) \
    ro.modversion=MinimalOS-v$(VERSION)-$(MINIMAL_BUILDTYPE)

# Set MINIMAL version
MINIMAL_VERSION := MinimalOS-v$(VERSION)-$(MINIMAL_BUILDTYPE)-$(shell date +%Y%m%d)
