echo 'Cloning stuff needed to build for vili'

# Device common
echo 'Cloning common device tree'
git clone https://github.com/0mar99/android_device_xiaomi_sm8350-common.git -b derp device/xiaomi/sm8350-common

# Kernel
echo 'Cloning kernel'
git clone https://github.com/0mar99/android_kernel_xiaomi_sm8350.git -b lineage-21 kernel/xiaomi/sm8350

# Hardware Xiaomi
echo 'Cloning hardware xiaomi'
rm -rf hardware/xiaomi
git clone https://github.com/0mar99/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi

# Vendor
echo 'Cloning vendor tree'
git clone https://github.com/0mar99/proprietary_vendor_xiaomi_vili.git -b lineage-21 vendor/xiaomi/vili

# Vendor common
echo 'Cloning common vendor tree'
git clone https://github.com/0mar99/proprietary_vendor_xiaomi_sm8350-common.git -b derp vendor/xiaomi/sm8350-common

# Leica camera
echo 'Cloning Leica camera'
git clone https://gitlab.com/0mar99/proprietary_vendor_xiaomi_camera.git -b leica vendor/xiaomi/camera

# Firmware
echo 'Cloning firmware'
git clone --depth=1 https://gitlab.com/0mar99/vili-firmware.git -b global vendor/xiaomi/vili-firmware

# HALs
echo 'Cloning updated HALs'
rm -rf hardware/qcom-caf/sm8350/display
git clone --depth=1 https://github.com/0mar99/hardware_qcom_display.git -b 14-caf-sm8350 hardware/qcom-caf/sm8350/display

rm -rf hardware/qcom-caf/sm8350/media
git clone --depth=1 https://github.com/0mar99/hardware_qcom_media.git -b 14-caf-sm8350 hardware/qcom-caf/sm8350/media

rm -rf hardware/qcom-caf/sm8350/audio
git clone --depth=1 https://github.com/0mar99/hardware_qcom_audio.git -b 14-caf-sm8350 hardware/qcom-caf/sm8350/audio

# Keys
echo 'Cloning private keys'
rm -rf vendor/derp/signing
git clone https://gitlab.com/0mar99/vendor_derp_signing.git vendor/derp/signing

echo 'delete vendorsetup.sh from device tree once this is done'
