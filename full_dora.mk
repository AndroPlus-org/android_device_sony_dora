# Copyright 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/dora/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_COPY_FILES += \
    device/sony/dora/kernel:/kernel \
    device/sony/dora/fstab.qcom:root/fstab.qcom \
    device/sony/dora/recovery/root/vendor/lib64/hw/keystore.msm8996.so:root/vendor/lib64/hw/keystore.msm8996.so \
    device/sony/dora/recovery/root/vendor/lib64/lib-sec-disp.so:root/vendor/lib64/lib-sec-disp.so \
    device/sony/dora/recovery/root/vendor/lib64/libGPreqcancel.so:root/vendor/lib64/libGPreqcancel.so \
    device/sony/dora/recovery/root/vendor/lib64/libGPreqcancel_svc.so:root/vendor/lib64/libGPreqcancel_svc.so \
    device/sony/dora/recovery/root/vendor/lib64/libQSEEComAPI.so:root/vendor/lib64/libQSEEComAPI.so \
    device/sony/dora/recovery/root/vendor/lib64/libStDrvInt.so:root/vendor/lib64/libStDrvInt.so \
    device/sony/dora/recovery/root/vendor/lib64/libdiag.so:root/vendor/lib64/libdiag.so \
    device/sony/dora/recovery/root/vendor/lib64/libdrmfs.so:root/vendor/lib64/libdrmfs.so \
    device/sony/dora/recovery/root/vendor/lib64/libdrmtime.so:root/vendor/lib64/libdrmtime.so \
    device/sony/dora/recovery/root/vendor/lib64/libqisl.so:root/vendor/lib64/libqisl.so \
    device/sony/dora/recovery/root/vendor/lib64/librpmb.so:root/vendor/lib64/librpmb.so \
    device/sony/dora/recovery/root/vendor/lib64/libsecureui.so:root/vendor/lib64/libsecureui.so \
    device/sony/dora/recovery/root/vendor/lib64/libsecureui_svcsock.so:root/vendor/lib64/libsecureui_svcsock.so \
    device/sony/dora/recovery/root/vendor/lib64/libssd.so:root/vendor/lib64/libssd.so \
    device/sony/dora/recovery/root/vendor/lib64/libtime_genoff.so:root/vendor/lib64/libtime_genoff.so

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:root/system/usr/share/zoneinfo/tzdata

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=1D9

PRODUCT_NAME := dora
PRODUCT_DEVICE := dora
PRODUCT_MODEL := F8131
PRODUCT_BRAND := Sony
PRODUCT_MANUFACTURER := Sony

# Platform specific default properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.data.qmi.adb_logmask=0

# ADBoverWIFI
PRODUCT_PROPERTY_OVERRIDES += \
    service.adb.tcp.port=5555

# Enable MultiWindow
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.debug.multi_window=true

# Default to LTE/GSM/WCDMA.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.default_network=9

# System props for the data modules
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    ro.data.large_tcp_window_size=true

# Enable Power save functionality for modem
PRODUCT_PROPERTY_OVERRIDES += \
    persist.radio.add_power_save=1 \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.oem_socket=false

# Ringer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.call_ring.multiple=false

# System props for telephony System prop to turn on CdmaLTEPhone always
PRODUCT_PROPERTY_OVERRIDES += \
    telephony.lteOnCdmaDevice=0

# Hardware composer
PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true

# Hardware User Interface parameters
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

# DRM service
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# VIDC: debug_levels 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.level=1

# Fluencetype can be "fluence" or "fluencepro" or "none"
PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    media.aac_51_output_enabled=true

# Property to enable user to access Google WFD settings.
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

# Property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.wfd.virtual=0

# Wi-Fi interface name
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# BT address
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/etc/bluetooth_bdaddr

# System prop for NFC DT
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.disable_zsl_mode=0 \
    persist.camera.HAL3.enabled=1 \
    persist.camera.ois.disable=0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qti.sensors.dpc=true

# Sensors debug
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.sensors.hal=0 \
    debug.qualcomm.sns.daemon=0 \
    debug.qualcomm.sns.hal=0 \
    debug.qualcomm.sns.libsensor1=0
