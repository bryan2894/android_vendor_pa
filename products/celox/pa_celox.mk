# Copyright (C) 2016-2017 Paranoid Android
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

# Check for target product
ifeq ($(TARGET_PRODUCT),pa_celox)

# Inherit device configuration
$(call inherit-product, device/samsung/celox/celox.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Include Paranoid Android common configuration
TARGET_BOOT_ANIMATION_RES := 480

include device/qcom/common/common.mk
include vendor/pa/main.mk

# Override AOSP build properties
PRODUCT_NAME := pa_celox
PRODUCT_DEVICE := celox
PRODUCT_BRAND := samsung
PRODUCT_MODEL := celox
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="celox" \
    PRODUCT_NAME="celox" \
    BUILD_FINGERPRINT="samsung/celox/celox:4.1.2/JZO54K:user/release-keys" \
    PRIVATE_BUILD_DESC="celox-user 4.1.2 JZO54K release-keys"

endif
