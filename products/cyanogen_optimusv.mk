# Inherit AOSP device configuration for ascend.
$(call inherit-product, device/lge/optimusv/device_optimusv.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_BRAND := LGE
PRODUCT_DEVICE := optimusv
PRODUCT_MODEL := LS670
PRODUCT_MANUFACTURER := LGE
PRODUCT_NAME := cyanogen_optimusv
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=optimusv BUILD_UTC_DATE=0

#PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-ascend.map

#
# Set ro.modversion
#
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CM6-$(shell date +%m%d%Y)-OptimusV

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
 
