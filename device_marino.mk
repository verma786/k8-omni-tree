$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)


DEVICE_PACKAGE_OVERLAYS += device/lenovo/marino/overlay

LOCAL_PATH := device/lenovo/marino
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

#PRODUCT_PACKAGES += \
	dualboot_init

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_marino
PRODUCT_DEVICE := marino
