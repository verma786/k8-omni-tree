# Release name
PRODUCT_RELEASE_NAME := marino

# Inherit device configuration
$(call inherit-product, device/lenovo/marino/device_marino.mk)

## Device identifier. This must come after all inclusions

PRODUCT_DEVICE := marino
PRODUCT_NAME := omni_marino
PRODUCT_BRAND := lenovo
PRODUCT_MODEL := K8 +
PRODUCT_MANUFACTURER := lenovo

# Time Zone data for recovery
PRODUCT_COPY_FILES += bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
