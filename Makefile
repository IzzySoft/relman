# Makefile for relman
# $Id$

DESTDIR=
INSTALL=install
INSTALL_PROGRAM=$(INSTALL)
INSTALL_DATA=$(INSTALL) -m 644
prefix=/usr/local
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
datarootdir=$(prefix)/share
datadir=$(datarootdir)
sysconfdir=$(prefix)/etc
docdir=$(datarootdir)/doc/relman
sysconfdir=/etc
mandir=$(datarootdir)/man
man5dir=$(mandir)/man5
man8dir=$(mandir)/man8

install: installdirs
	$(INSTALL_DATA) -c relman.conf $(DESTDIR)$(sysconfdir)
	$(INSTALL) -c relman $(DESTDIR)$(bindir)
	$(INSTALL_DATA) -c doc/* $(DESTDIR)$(docdir)
	#gzip man/*
	#$(INSTALL_DATA) -c man/*.5* $(DESTDIR)$(man5dir)
	#$(INSTALL_DATA) -c man/*.8* $(DESTDIR)$(man8dir)

uninstall:
	rm -f $(DESTDIR)$(sysconfdir)/relman.conf
	rm -f $(DESTDIR)$(bindir)/relman
	rm -rf $(DESTDIR)$(docdir)
	#rm -f $(DESTDIR)$(man5dir)/relman.*
	#rm -f $(DESTDIR)$(man8dir)/relman.*

installdirs:
	# Generate all required target directories (due to DESTDIR, i.e. all)
	mkdir -p $(DESTDIR)$(docdir)
	if [ ! -d $(DESTDIR)$(bindir) ]; then mkdir -p $(DESTDIR)$(bindir); fi
	if [ ! -d $(DESTDIR)$(sysconfdir) ]; then mkdir -p $(DESTDIR)$(sysconfdir); fi
	#if [ ! -d $(DESTDIR)$(man5dir) ]; then mkdir -p $(DESTDIR)$(man5dir); fi
	#if [ ! -d $(DESTDIR)$(man8dir) ]; then mkdir -p $(DESTDIR)$(man8dir); fi
