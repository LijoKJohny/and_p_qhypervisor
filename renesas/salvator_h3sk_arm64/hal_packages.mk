#
# Copyright 2018 The Android Open-Source Project
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
#


# Graphics HAl and dependent libraries
PRODUCT_PACKAGES += \
    android.hardware.graphics.common@1.0-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    libdrm \
    libgbm \
    hwcomposer.drm \
    hwcomposer.default \
    gralloc.gbm \
    gralloc.drm \
    libGLES_mesa \
    gallium_dri \
    virtio_gpu_dri \
    libgralloc_drm \
    libfwdlockengine \
    libGLES_android \
    libtxc_dxtn \
    vintf \
    libLLVM \

# VNDK libraries
PRODUCT_PACKAGES += \
    vndk-sp \
    android.hardware.renderscript@1.0.vndk-sp\
    android.hardware.graphics.allocator@2.0.vndk-sp\
    android.hardware.graphics.mapper@2.0.vndk-sp\
    android.hardware.graphics.common@1.0.vndk-sp\
    libhwbinder.vndk-sp\
    libbase.vndk-sp\
    libcutils.vndk-sp\
    libhardware.vndk-sp\
    libhidlbase.vndk-sp\
    libhidltransport.vndk-sp\
    libutils.vndk-sp\
    libc++.vndk-sp\
    libRS_internal.vndk-sp\
    libRSDriver.vndk-sp\
    libRSCpuRef.vndk-sp\
    libbcinfo.vndk-sp\
    libblas.vndk-sp\
    libft2.vndk-sp\
    libpng.vndk-sp\
    libcompiler_rt.vndk-sp\
    libbacktrace.vndk-sp\
    libunwind.vndk-sp\
    liblzma.vndk-sp\
    libz.vndk-sp\

# Automotive
PRODUCT_PACKAGES += \
    android.hardware.automotive.audiocontrol@1.0-service \
    android.hardware.automotive.vehicle@2.0-impl \
    android.hardware.automotive.vehicle@2.0-service \

# Broadcast radio HAL (AM/FM)
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.1-impl \

# Sound recognition
PRODUCT_PACKAGES += \
    android.hardware.soundtrigger@2.0-impl \

# configstore HAL
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service \

# memtrack HAL (graphics memory) - currently not working in hypervisor, need hw implementation 
#PRODUCT_PACKAGES += \
#    android.hardware.memtrack@1.0-impl \
#    android.hardware.memtrack@1.0-service \

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# GPS, GNSS HAL libraries
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-service \
    android.hardware.gnss@1.0-impl \
    gps.default \

# Sensor HaL libraries
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    sensors.hdaps \
    sensors.iio-old \
    sensors.kbd \
    sensors.s103t \
    sensors.w500 \
    sens \
    activity_recognition.iio \
    activity \
    sensors.iio \

# Media DRM HAL
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.0-impl

# Power management setup HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl \
    power.arm64 \
    power.default \

# Camera HAL
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-service \
    android.hardware.camera.provider@2.4-impl \
    camera.arm64 \

# Health HAL (for monitoring battery,charger,recovery and storage)
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-service

# Media and OMX 
PRODUCT_PACKAGES += \
    android.hardware.media@1.0 \
    android.hardware.media.omx@1.0 \
    android.hardware.media.omx@1.0-service \

# Gatekeeper HAL - zygote need this after first bootup otherwise crashes and reboots
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service \

# Light HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service \
    android.hardware.light@2.0-impl \
    lights.default \

# Bluetooth - commented due to a crash in libbluetooth but now copying from Bluetooth package from somewhere else and the crash is still present
#PRODUCT_PACKAGES += \
#    android.hardware.bluetooth@1.0-service.btlinux \
#    android.hardware.bluetooth@1.0-service \
#    android.hardware.bluetooth@1.0-impl \
#    bluetooth.default \
#    audio.a2dp.default \
#    libbluetooth_jni \
#    rtk_hciattach \


# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@4.0-impl \
    android.hardware.audio@4.0-service \
    android.hardware.audio.effect@4.0-impl \
    audio.r_submix.default \
    audio.usb.default \
    audio.a2dp.default \
    audio.primary.arm64 \
    audio.primary.hdmi \


# Wi-Fi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi.supplicant@1.0 \
    android.hardware.wifi@1.0-service-lib \
    hostapd.android \
    wpa_supplicant \
    libwpa_client \
    hostapd \
#    rild \ - wifi only device

# Render Script
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl \
    libRS \
    librs_jni \
    libRSDriver \
    libRS_internal \
    libRSCacheDir \
    libRSCpuRef \
    libRScpp \

# Dumpstate HAL
#PRODUCT_PACKAGES += \
#    android.hardware.dumpstate@1.0-service 

PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \

# Add ION lib
PRODUCT_PACKAGES += libion


