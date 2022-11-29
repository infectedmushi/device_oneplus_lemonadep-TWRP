#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_mixer_paths.xml \
    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_lahaina/sound_trigger_platform_info.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 3168
TARGET_SCREEN_WIDTH := 1440

# Device init scripts
#PRODUCT_PACKAGES += \
#    init.recovery.target.rc

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8350-common/common.mk)

PRODUCT_SOONG_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 30
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)
BOARD_USES_QCOM_FBE_DECRYPTION := true
TW_USE_FSCRYPT_POLICY := 2

TARGET_RECOVERY_DEVICE_MODULES += libion vendor.display.config@1.0 vendor.display.config@2.0 libdisplayconfig.qti device_manifest.xml system_manifest.xml

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_INCLUDE_NTFS_3G := true
TW_USE_TOOLBOX := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_Y_OFFSET := 80
TW_H_OFFSET := -80
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TARGET_USES_MKE2FS := true
TW_NO_SCREEN_BLANK := true
TW_HAS_EDL_MODE := true
TW_EXCLUDE_APEX := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/msm-therm/temp"
TW_INCLUDE_FASTBOOTD := true

TW_LOAD_VENDOR_MODULES := "hdmi_dlkm.ko mt2063.ko aw8697.ko llcc_perfmon.ko mxl301rf.ko mxl5007t.ko si2157.ko mbhc_dlkm.ko pinctrl_wcd_dlkm.ko qm1d1c0042.ko fc0012.ko tua9001.ko it913x.ko hid-aksys.ko mxl5005s.ko qt1010.ko mc44s803.ko q6_pdr_dlkm.ko camera.ko m88rs6000t.ko tda18250.ko max2165.ko tuner-types.ko fc0011.ko stub_dlkm.ko rmnet_ctl.ko xc4000.ko rdbg.ko tuner-xc2028.ko msi001.ko tda18218.ko xc5000.ko tea5767.ko btpower.ko mt2131.ko e4000.ko snd_event_dlkm.ko qcom_edac.ko qca_cld3_wlan.ko tda9887.ko msm_drm.ko swr_dlkm.ko slimbus.ko tda18212.ko tea5761.ko mt2060.ko qm1d1b0004.ko wcd_core_dlkm.ko r820t.ko mt2266.ko radio-i2c-rtc6226-qca.ko fc2580.ko fc0013.ko q6_notifier_dlkm.ko swr_haptics_dlkm.ko wcd938x_slave_dlkm.ko wcd937x_slave_dlkm.ko rmnet_core.ko rmnet_offload.ko rmnet_shs.ko wsa883x_dlkm.ko apr_dlkm.ko q6_dlkm.ko tfa98xx-v6_dlkm.ko platform_dlkm.ko swr_ctrl_dlkm.ko bolero_cdc_dlkm.ko wcd9xxx_dlkm.ko wcd937x_dlkm.ko wcd938x_dlkm.ko swr_dmic_dlkm.ko tuner-simple.ko wsa_macro_dlkm.ko rx_macro_dlkm.ko slimbus-ngd.ko va_macro_dlkm.ko machine_dlkm.ko native_dlkm.ko bt_fm_slim.ko adsp_loader_dlkm.ko pinctrl_lpi_dlkm.ko tx_macro_dlkm.ko"

#Properties
TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.crypto.type=file"

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/libdisplayconfig.qti.so

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/lemonadep/system/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/system/etc/vintf/manifest.xml \
    $(OUT_DIR)/target/product/lemonadep/vendor/etc/vintf/manifest.xml:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/vintf/manifest.xml


# Inherit from the proprietary files makefile.
#$(call inherit-product, vendor/oneplus/lemonadep/lemonadep-vendor.mk)
