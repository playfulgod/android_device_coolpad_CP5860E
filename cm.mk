## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := CP5860E

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/coolpad/CP5860E/device_CP5860E.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CP5860E
PRODUCT_NAME := cm_CP5860E
PRODUCT_BRAND := coolpad
PRODUCT_MODEL := CP5860E
PRODUCT_MANUFACTURER := coolpad
