#
# Copyright (C) 2011 The Android Open-Source Project
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

DEVICE_PREBUILT := device/archos/archos_g9/prebuilt

PRODUCT_AAPT_CONFIG := normal mdpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/archos/archos_g9/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES := \
	$(LOCAL_KERNEL):kernel \
	$(DEVICE_PREBUILT)/etc/media_profiles.xml:system/etc/media_profiles.xml \
	frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
	frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# EGL Proprietary Files
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/bin/pvrsrvinit:system/bin/pvrsrvinit \
	$(DEVICE_PREBUILT)/lib/egl/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
	$(DEVICE_PREBUILT)/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
	$(DEVICE_PREBUILT)/lib/egl/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
	$(DEVICE_PREBUILT)/lib/hw/gralloc.omap4.so:system/lib/hw/gralloc.omap4.so \
	$(DEVICE_PREBUILT)/vendor/lib/hw/hwcomposer.omap4.so:system/vendor/lib/hw/hwcomposer.omap4.so \
	$(DEVICE_PREBUILT)/lib/libglslcompiler.so:system/lib/libglslcompiler.so \
	$(DEVICE_PREBUILT)/lib/libIMGegl.so:system/lib/libIMGegl.so \
	$(DEVICE_PREBUILT)/lib/libpvr2d.so:system/lib/libpvr2d.so \
	$(DEVICE_PREBUILT)/lib/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
	$(DEVICE_PREBUILT)/lib/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
	$(DEVICE_PREBUILT)/lib/libsrv_init.so:system/lib/libsrv_init.so \
	$(DEVICE_PREBUILT)/lib/libsrv_um.so:system/lib/libsrv_um.so \
	$(DEVICE_PREBUILT)/lib/libusc.so:system/lib/libusc.so

# Vold Mounting
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/etc/fstab:system/etc/fstab \
	$(DEVICE_PREBUILT)/etc/fstab_nand:system/etc/fstab_nand \
	$(DEVICE_PREBUILT)/etc/fstab_nor:system/etc/fstab_nor \
	$(DEVICE_PREBUILT)/etc/vold.A80H.fstab:system/etc/vold.A80H.fstab \
	$(DEVICE_PREBUILT)/etc/vold.A80S.fstab:system/etc/vold.A80S.fstab \
	$(DEVICE_PREBUILT)/etc/vold.A101H.fstab:system/etc/vold.A101H.fstab \
	$(DEVICE_PREBUILT)/etc/vold.A101S.fstab:system/etc/vold.A101S.fstab \
	$(DEVICE_PREBUILT)/etc/vold.fstab:system/etc/vold.fstab

# Key Layout/Screen Config.
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/usr/idc/cpt_i2c_tsp.idc:system/usr/idc/cpt_i2c_tsp.idc \
	$(DEVICE_PREBUILT)/usr/idc/cypress-tma340.idc:system/usr/idc/cypress-tma340.idc \
	$(DEVICE_PREBUILT)/usr/idc/pixcir_i2c_tsp.idc:system/usr/idc/pixcir_i2c_tsp.idc \
	$(DEVICE_PREBUILT)/usr/idc/qwerty.idc:system/usr/idc/qwerty.idc \
	$(DEVICE_PREBUILT)/usr/idc/qwerty2.idc:system/usr/idc/qwerty2.idc \
	$(DEVICE_PREBUILT)/usr/idc/tr16c0_i2c_tsp.idc:system/usr/idc/tr16c0_i2c_tsp.idc

# Init scripts
PRODUCT_COPY_FILES += \
	$(DEVICE_PREBUILT)/etc/init/init.A80H.rc:system/etc/init/init.A80H.rc \
	$(DEVICE_PREBUILT)/etc/init/init.A80S.rc:system/etc/init/init.A80S.rc \
	$(DEVICE_PREBUILT)/etc/init/init.A101H.rc:system/etc/init/init.A101H.rc \
	$(DEVICE_PREBUILT)/etc/init/init.A101S.rc:system/etc/init/init.A101S.rc \
	$(DEVICE_PREBUILT)/etc/init/init.archos.rc:system/etc/init/init.archos.rc \
	$(DEVICE_PREBUILT)/etc/init/init.rc:system/etc/init/init.rc \
	$(DEVICE_PREBUILT)/etc/init/ueventd.archos.rc:system/etc/init/ueventd.archos.rc

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:/system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:/system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:/system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml

PRODUCT_PACKAGES := \
        Superuser \
        su \

# Wifi
PRODUCT_PACKAGES += \
        lib_driver_cmd_wl12xx \
        wlan_loader \
        wlan_cu \
        dhcpcd.conf \
        wpa_supplicant.conf \
        make_ext4fs \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
        libinvensense_mpl \
        hwcomposer.default \
        parse_hdmi_edid \
        libedid \
        audio_policy.default \
        libaudioutils

PRODUCT_PROPERTY_OVERRIDES := \
	wifi.interface=wlan0 \
	hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

PRODUCT_CHARACTERISTICS := tablet

DEVICE_PACKAGE_OVERLAYS := \
        device/archos/archos_g9/overlay

#HWC Hal
#PRODUCT_PACKAGES += \
#        hwcomposer.omap4

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES := \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni \
	com.android.future.usb.accessory

PRODUCT_PACKAGES += \
        Apollo \
        Camera \
        CMWallpapers \
        DeskClock \
        Development \
        Galaxy4 \
        Gallery2 \
        HoloSpiralWallpaper \
        Term \
        ThemeChooser \
        ThemeManager \
        Trebuchet

PRODUCT_PACKAGES += \
	audio.a2dp.default \
	libaudioutils

PRODUCT_PACKAGES += \
	dhcpcd.conf \
	TQS_D_1.7.ini \
	calibrator

# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

# BlueZ test tools
PRODUCT_PACKAGES += \
	hciconfig \
	hcitool

#PRODUCT_PACKAGES += send_bug
#PRODUCT_COPY_FILES += \
#	system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
#	system/extras/bugmailer/send_bug:system/bin/send_bug

# Inherit from those products. Most specific first.
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
#$(call inherit-product, vendor/archos/archos_g9/archos_g9-vendor-blobs.mk)
#$(call inherit-product, vendor/archos/archos_g9/archos_g9-vendor.mk)
#$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
#$(call inherit-product-if-exists, vendor/ti/proprietary/omap4xxx/ti-omap4-vendor.mk)
#$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
#$(call inherit-product-if-exists, vendor/cm/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := cm_archos_g9
PRODUCT_DEVICE := archos_g9
