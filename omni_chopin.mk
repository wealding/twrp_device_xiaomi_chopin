# Inherit from those products. Most specific first.
$(call inherit-product, build/target/product/embedded.mk)

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from chopin device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := redmi
PRODUCT_DEVICE := chopin
PRODUCT_MANUFACTURER := redmi
PRODUCT_NAME := omni_chopin
PRODUCT_MODEL := chopin

PRODUCT_GMS_CLIENTID_BASE := android-redmi
TARGET_VENDOR := redmi
TARGET_VENDOR_PRODUCT_NAME := chopin
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="chopin-user 11 RP1A.200720.011 21.6.23 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := redmi/chopin/chopin:11/RP1A.200720.011/21.6.23:user/release-keys
