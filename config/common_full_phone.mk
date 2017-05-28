# Inherit common stuff
$(call inherit-product, vendor/du/config/common.mk)

# World APN list
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# World SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# Battery
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.hw_power_saving=1 \
    ro.ril.disable.power.collapse=0 \
    persist.radio.add_power_save=1 \
    persist.sys.use_dithering=0 \
    pm.sleep_mode=1 \
    power_supply.wakeup=enable \
    power.saving.mode=1
