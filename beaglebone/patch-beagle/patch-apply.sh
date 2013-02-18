#!/bin/bash

# Patches taken from https://github.com/beagleboard/kernel
# Order matters!
PATCHSET="dma cpsw pinctrl cpufreq adc pwm i2c usb da8xx-fb mmc fixes f2fs 6lowpan capebus hdmi pruss arm omap omap_sakoman omap_beagle_expansion omap_beagle omap_panda omap_sgx omap_fixes omap_thermal net spi capes"

echo "#############################"
echo "Unpacking patches"
echo "#############################"
tar xzvf patch-beagle.tgz


echo "#############################"
echo "#############################"
echo "     INIT apply patches"
echo "#############################"
echo "#############################"
# apply patches
for patchset in ${PATCHSET} ; do
	git am ${patchset}/*.patch
done


echo "#############################"
echo "#############################"
echo "     DONE apply patches"
echo "#############################"
echo "#############################"

