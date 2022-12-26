# yoga-usage-mode

ACPI driver Linux kernel module for Lenovo Yoga usage mode sensor to detect whether the device is in tablet or laptop mode. Creates an input device reporting `SW_TABLET_MODE` which libinput uses to disable keyboard and touchpad when tablet mode is entered; can also be used with https://github.com/alesguzik/linux_detect_tablet_mode.

This module has been reported to work at least with the following models:

* IdeaPad Flex 14API
* Yoga 6 13ALC6
* Yoga 6 13ALC7
* Yoga C940-14IIL

Arch Linux users can install this using the AUR package [`yoga-usage-mode-dkms-git`](https://aur.archlinux.org/packages/yoga-usage-mode-dkms-git/).

Usage:

* `make` to build
* `make load` as root to load the module for testing
* `make unload` as root to unload the module
* `make install` as root to install

Add `yoga-usage-mode` to e.g. `/etc/modules-load.d/modules.conf` to load automatically.

Reconstructing the WMI interface (see `c940.mof`) was done using https://github.com/pali/bmfdec.
