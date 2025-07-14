.PHONY: all clean install-desktop install-schema install install-user
	uninstall-desktop uninstall-schema uninstall

PREFIX ?= $(shell echo 'import sys; print(sys.prefix)' | python)
USER_PREFIX ?= $(shell echo 'import site; print(site.USER_BASE)' | python)

desktopfile=$(wildcard *.desktop)
schemadir=share/glib-2.0/schemas
schemafile=$(wildcard *.gschema.xml)

all:
	cd po && $(MAKE)
	pyproject-build -nwx

clean:
	cd po && $(MAKE) clean
	rm -fr build dist __pycache__ Obmenu.egg-info

install-desktop:
	mkdir -p $(DESTDIR)$(PREFIX)/share/applications
	cp -f $(desktopfile) $(DESTDIR)$(PREFIX)/share/applications

install-schema:
	mkdir -p $(DESTDIR)$(PREFIX)/$(schemadir)
	cp -f $(schemafile) $(DESTDIR)$(PREFIX)/$(schemadir)
	glib-compile-schemas $(DESTDIR)$(PREFIX)/$(schemadir)

install: install-desktop install-schema
	pip install --prefix=$(PREFIX) .
	cd po && $(MAKE) install
	
install-user:
	pip install --user --ignore-installed .
	$(MAKE) install-schema PREFIX=$(USER_PREFIX)
	cd po && $(MAKE) install PREFIX=$(USER_PREFIX)

uninstall-desktop:
	rm -f $(DESTDIR)$(PREFIX)/share/applications/$(desktopfile)

uninstall-schema:
	rm -f $(DESTDIR)$(PREFIX)/$(schemadir)/$(schemafile)
	glib-compile-schemas $(DESTDIR)$(PREFIX)/$(schemadir)
	-rmdir $(DESTDIR)$(PREFIX)/$(schemadir)
	-rmdir $(dir $(DESTDIR)$(PREFIX)/$(schemadir))

uninstall: uninstall-desktop uninstall-schema
	cd po && $(MAKE) uninstall
	pip uninstall obmenu

uninstall-user:
	cd po && $(MAKE) uninstall PREFIX=$(USER_PREFIX)
	$(MAKE) uninstall-desktop PREFIX=$(USER_PREFIX)
	$(MAKE) uninstall-schema PREFIX=$(USER_PREFIX)
