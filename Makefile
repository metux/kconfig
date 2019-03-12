# SPDX-License-Identifier: GPL-2.0
# ===========================================================================
# Build standalone kconf - based on Linux Kernel's scripts7kconfig/*

PREFIX ?= /usr
BINDIR ?= $(PREFIX)/bin

all:
	$(MAKE) -C kconfig all

install:	all
	mkdir -p $(DESTDIR)$(BINDIR)
	cp -p kconfig/kconf-menuconfig $(DESTDIR)$(BINDIR)

clean:
	$(MAKE) -C kconfig clean
