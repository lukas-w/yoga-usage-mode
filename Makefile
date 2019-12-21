TARGET_MODULE:=yoga-usage-mode
obj-m := $(TARGET_MODULE).o

KVER=$(shell uname -r)
KDIR=/lib/modules/$(KVER)/build
MDIR=/lib/modules/$(KVER)/kernel/platform/x86

default:
	$(MAKE) -C $(KDIR) M=$(PWD) modules

install:
	install -d $(MDIR)
	install -m 644 -c $(TARGET_MODULE).ko $(MDIR)
	depmod -a

clean:
	$(MAKE) -C $(KDIR) M=$(PWD) clean

load:
	insmod ./$(TARGET_MODULE).ko
unload:
	rmmod ./$(TARGET_MODULE).ko
