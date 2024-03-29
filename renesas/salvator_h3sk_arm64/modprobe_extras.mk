#
# Copyright (C) 2011 The Android Open-Source Project
# Copyright (C) 2016 GlobalLogic
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

PRODUCT_OUT_ := /home/lijo/Android_P_r30/WorkDir/out/target/product/salvator_h3sk_arm64
TARGET_LIB_MODPROBE := $(PRODUCT_OUT_)/root/lib

CREATE_MODPROBE_DIRS:
	mkdir -p $(TARGET_LIB_MODPROBE)
	ln -sf ../system/lib/modules $(TARGET_LIB_MODPROBE)/modules

