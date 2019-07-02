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

# Use the non-open-source parts, if they're present
#-include vendor/renesas/salvator_h3sk_arm64/BoardConfigVendor.mk

#Target board platform parameters
TARGET_BOARD_PLATFORM := salvator_h3sk_arm64
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := arm64-v8a
TARGET_CPU_VARIANT := generic
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi-v7a
TARGET_2ND_CPU_VARIANT := generic
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true
TARGET_USES_64_BIT_BINDER := true
BOARD_IS_AUTOMOTIVE := true #may be needed for car libraries from platform/packages

#Graphics
BOARD_USES_DRM_HWCOMPOSER := true
#BOARD_USES_LIBDRM := true #copied from mediatek configuration
LIBGRALLOC := gralloc.gbm
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS ?= 3
BOARD_GPU_DRIVERS ?= virgl swrast nouveau vmwgfx
BOARD_USE_LEGACY_UI := true

#Android images configuration
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 #2.1 GB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648 #2.1 GB
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_FLASH_BLOCK_SIZE := 512

#Kernel specifications
TARGET_KERNEL_SOURCE := kernel/kernel-4.9.95
TARGET_KERNEL_CONFIG := android_salvator_h3sk_arm64_defconfig
LINUX_KERNEL_CROSS_COMPILE := aarch64-linux-android-
TARGET_KERNEL_CUSTOM_TOOLCHAIN := aarch64-linux-android-4.9
TARGET_KERNEL_EXT_MODULES := CREATE_MODPROBE_DIRS

#Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

#Camera
USE_CAMERA_STUB := false

#GPS
BOARD_HAS_GPS_HARDWARE := true

#BT (Some framework code requires this to enable BT)
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

#Sepolicy directories
BOARD_SEPOLICY_DIRS += \
	packages/services/Car/car_product/sepolicy \
	device/generic/car/common/sepolicy \



