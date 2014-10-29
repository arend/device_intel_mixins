PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        device/intel/mixins/wifi/brcmfmac/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
        device/intel/mixins/wifi/brcmfmac/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

# Override WiFi related configs
TARGET_KERNEL_CONFIG_OVERRIDES += device/intel/mixins/wifi/brcmfmac/kernel_defconfig_overlay

# include firmware binaries for Wifi adapters
$(call inherit-product-if-exists, hardware/broadcom/wlan/brcmfmac/firmware/brcmfmac.mk)

PRODUCT_PROPERTY_OVERRIDES += \
        wifi.interface=wlan0

PRODUCT_PACKAGES += brcmfmac
