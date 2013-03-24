$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/coolpad/CP5860E/CP5860E-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/coolpad/CP5860E/overlay

LOCAL_PATH := device/coolpad/CP5860E
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_CP5860E
PRODUCT_DEVICE := CP5860E

## Recovery
PRODUCT_COPY_FILE += \
	$(LOCAL_PATH)/recovery/root/recovery.rc:recovery/root/init.rc \
	$(LOCAL_PATH)/recovery/root/init:recovery/root/init
