#
# kmake - helper script for buildroot/kernel builds outside of main source tree
#
# AUTHOR: Joey Pabalinas <joeypabalinas@gmail.com>
# See LICENSE.md file for copyright and license details.


# configuration
TARGET := kmake
BINDIR := bin
DESTDIR ?=
PREFIX ?= /usr/local

all: | uninstall
	$(MAKE) install

.PHONY: all install uninstall clean

install: $(TARGET)
	@echo "installing to \"$(PREFIX)\"..."
	mkdir -p $(DESTDIR)$(PREFIX)/$(BINDIR)
	install -c $(TARGET) $(DESTDIR)$(PREFIX)/$(BINDIR)/

uninstall clean:
	@echo "uninstalling from \"$(PREFIX)\"..."
	$(RM) $(DESTDIR)$(PREFIX)/$(BINDIR)/$(TARGET)
