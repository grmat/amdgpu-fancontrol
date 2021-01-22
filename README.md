# amdgpu-fancontrol

Simple bash script to control AMD Radeon graphics cards fan pwm. Adjust temp/pwm values and hysteresis/interval in the script as desired. Other adjustments, such as the correct hwmon path might be required as well. Comes with a systemd service that will start with your PC.

This script was initially meant as an example. Please don't just run it naively and keep in mind that I'm not responsible for failures.

This fork was modified to work better with an AMD RX 5700 XT. Specifically, the model I use is the ASRock Taichi 5700 XT. It will probably work just fine with other AMD (or possibly even nVidia) cards, but you should check that you a) have a /sys/class/drm/card0/device/hwmon/hwmon0/temp2 sensor, and b) that sensor is the one you want to watch ("junction" or hotspot temp on my card). If you want to watch a sensor other than temp2, it's an easy edit to make to the script.

## Fork edits

This repo was forked from grmat. I've added an install script, edited the config file to better handle cards with forced 0 RPM/ 0dB mode, and changed the sensor being observed from temp1 ("edge"/average die temp on 5700 XT) to temp2 ("junction"/hotspot temp on 5700 XT). Depending on your card, this may not be desirable, or this path may not even exist.

You can get a list of the temperature sensor labels by running `cat /sys/class/drm/card0/device/hwmon/hwmon0/temp*_label` . The actual sensor files are in the same directory.
