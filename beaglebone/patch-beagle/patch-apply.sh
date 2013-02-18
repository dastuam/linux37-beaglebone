#!/bin/bash

# Patches taken from https://github.com/beagleboard/kernel
# Order matters!
PATCHSET="dma cpsw pinctrl cpufreq adc pwm i2c usb da8xx-fb mmc fixes f2fs 6lowpan capebus hdmi pruss arm omap omap_sakoman omap_beagle_expansion omap_beagle omap_panda omap_sgx omap_fixes omap_thermal net spi capes"

# apply patches
for patchset in ${PATCHSET} ; do
	git am ${patchset}/*.patch
done

