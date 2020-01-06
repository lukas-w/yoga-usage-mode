ACPI driver Linux kernel module for Yoga C940 usage mode sensor to detect whether the device is in tablet or laptop mode. Creates an input device reporting `SW_TABLET_MODE` which libinput uses to disable keyboard and touchpad when tablet mode is entered; can also be used with https://github.com/alesguzik/linux_detect_tablet_mode. 

Usage:

* `make` to build
* `make load` as root to load the module for testing
* `make unload` as root to unload the module
* `make install` as rooot to install

Add `yoga-usage-mode` to e.g. `/etc/modules-load.d/modules.conf` to load automatically.

Reconstructing the WMI interface (see `c940.mof`) was done using https://github.com/pali/bmfdec.
