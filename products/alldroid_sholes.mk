$(call inherit-product, vendor/alldroid/products/alldroid_hdpi.mk)
  #
  # Overrides
PRODUCT_NAME := alldroid_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sholes-open
PRODUCT_MODEL := Droid
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES := BUILD_ID=ERE25 BUILD_DISPLAY_ID="alldroid alpha 2.1 ERE25" PRODUCT_NAME=voles TARGET_DEVICE=sholes BUILD_FINGERPRINT=google/passion/passion/mahimahi:2.1-update1/ERE27/24178:user/release-keys PRIVATE_BUILD_DESC="passion-user 2.1-update1 ERE27 24178 release-keys" PRODUCT_BRAND=verizon

PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=alldroid-alpha
        
include vendor/motorola/sholes-open/device_sholes.mk


