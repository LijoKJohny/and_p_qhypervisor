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

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

#Audio packages
PRODUCT_PACKAGES += \
	vehicle.default \
	tinymix \
	tinypcminfo \
	tinyplay \
	tinycap

PRODUCT_PROPERTY_OVERRIDES += \
	android.car.drawer.unlimited=true \
	android.car.hvac.demo=true \
	com.android.car.radio.demo=true \
	com.android.car.radio.demo.dual=true


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.lockscreen.disable.default=true

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.arch=x86_64 \
    ro.maxcpu=4 \
    ro.product.model=Hypervisor \
    ro.product.manufacturer=Generic \
    ro.setupwizard.mode=DISABLED \
    persist.rtc_local_time=1 \
    security.perf_harden=0 \
    ro.hardware.gralloc=gbm \
    ro.hardware.hwcomposer=drm \
    ro.sf.lcd_density=160 \
    debug.sf.no_hw_vsync=1 \
    hwc.drm.use_framebuffer_target=1 \
    hwc.drm.use_overlay_planes=0 \
    ro.zygote=zygote64_32 \
    ro.radio.noril=true

PRODUCT_FULL_TREBLE_OVERRIDE := true

# product specific rc files and fstab file
PRODUCT_COPY_FILES := \
      	$(LOCAL_PATH)/ueventd.intel_mrb_x86_64.rc:root/ueventd.intel_mrb_x86_64.rc \
	$(LOCAL_PATH)/init.intel_mrb_x86_64.rc:root/init.intel_mrb_x86_64.rc \
	$(LOCAL_PATH)/fstab.intel_mrb_x86_64:root/fstab.intel_mrb_x86_64 \
	$(LOCAL_PATH)/init.sh:system/bin/init.sh \

# copied from build/target/product/telephony.mk
PRODUCT_PACKAGES += \
    CarrierConfig \
    CarrierDefaultApp \
    Dialer \
    CallLogBackup \
    CellBroadcastReceiver \
    EmergencyInfo \
    rild \
    CarLauncher \

# copied from build/target/product/full_base_telephony.mk
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true


#copied from car_tel
PRODUCT_PACKAGES += \
    libfwdlockengine \
    OpenWnn \
    libWnnEngDic \
    libWnnJpnDic \
    libwnndict \
    WAPPushManager

PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam \
    PhotoTable

# Additional settings used in all AOSP builds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg

# copied from build/target/product/generic_no_telephony.mk
PRODUCT_PACKAGES += \
    Bluetooth \
    BluetoothMidiService \
    Camera2 \
    Gallery2 \
    Music \
    MusicFX \
    NfcNci \
    OneTimeInitializer \
    Provision \
    SystemUI \
    SysuiDarkThemeOverlay \
    EasterEgg \
    WallpaperCropper

PRODUCT_PACKAGES += \
    clatd \
    clatd.conf \
    pppd \
    screenrecord

PRODUCT_PACKAGES += \
    librs_jni \
    libvideoeditor_jni \
    libvideoeditor_core \
    libvideoeditor_osal \
    libvideoeditor_videofilters \
    libvideoeditorplayer \

PRODUCT_PACKAGES += \
    audio.primary.x86 \
    audio.primary.hdmi \
    local_time.default \
    vibrator.default \
    power.x86 \
    power.default \


PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown

# copied from build/target/board/generic_arm64/device.mk
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10

PRODUCT_COPY_FILES += \
    device/generic/goldfish/camera/media_profiles.xml:system/vendor/etc/media_profiles.xml \
    device/generic/goldfish/data/etc/apns-conf.xml:system/vendor/etc/apns-conf.xml \
    frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/vendor/etc/permissions/android.hardware.screen.landscape.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/vendor/etc/media_codecs_google_video.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/vendor/etc/media_codecs.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/vendor/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/vendor/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.software.backup.xml:system/vendor/etc/permissions/android.software.backup.xml \
    frameworks/native/data/etc/android.software.app_widgets.xml:system/vendor/etc/permissions/android.software.app_widgets.xml \
    frameworks/native/data/etc/android.software.device_admin.xml:system/vendor/etc/permissions/android.software.device_admin.xml \
    frameworks/native/data/etc/android.software.managed_users.xml:system/vendor/etc/permissions/android.software.managed_users.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.xml \
#    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml \
#    $(LOCAL_PATH)/sensor/sensor.rc:system/vendor/etc/init/sensor.rc \

# Stagefright FFMPEG plugins
#PRODUCT_PACKAGES += \
#    libffmpeg_extractor \
#    libffmpeg_omx \
#    media_codecs_ffmpeg.xml \

# For ffmpeg
#PRODUCT_PROPERTY_OVERRIDES += \
#    media.sf.hwaccel=1 \
#    media.sf.omx-plugin=libffmpeg_omx.so \
#    media.sf.extractor-plugin=libffmpeg_extractor.so \

# Copy sound files
$(call inherit-product-if-exists, frameworks/base/data/sounds/AllAudio.mk)

# Get the alsa files
$(call inherit-product-if-exists,hardware/libaudio/alsa.mk)

# Get TTS language packs
$(call inherit-product-if-exists, external/svox/pico/lang/all_pico_languages.mk)

# Graphics
$(call inherit-product-if-exists, $(LOCAL_PATH)/graphics.mk)

#Base configuration for communication-oriented android devices
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)

# Vendor make file
$(call inherit-product-if-exists, vendor/yazaki/intel_mrb_x86_64/device-vendor.mk)

# For modprobe
$(call inherit-product-if-exists, $(LOCAL_PATH)/modprobe_extras.mk)

#$(call inherit-product-if-exists, $(LOCAL_PATH)/build_initrd.mk)





