.PHONY: all clean install-desktop install-schema install install-user
	uninstall-desktop uninstall-schema uninstall

PREFIX ?= $(shell echo 'import sys; print(sys.prefix)' | python)

desktopfile=$(wildcard *.desktop)
schemadir=$(realpath $(dir $(shell which glib-compile-schemas))/../share/glib-2.0/schemas)
schemafile=$(wildcard *.gschema.xml)

all:
	cd po && $(MAKE)
	pyproject-build -nwx

clean:
	cd po && $(MAKE) clean
	rm -fr build dist __pycache__ Obmenu.egg-info

install-desktop:
	mkdir -p $(PREFIX)/share/applications
	cp -f $(desktopfile) $(PREFIX)/share/applications

install-schema:
	mkdir -p $(schemadir)
	cp -f $(schemafile) $(schemadir)
	glib-compile-schemas $(schemadir)

install: install-desktop install-schema
	pip install --prefix=$(PREFIX) .
	cd po && $(MAKE) install
	
install-user:
	pip install --user --ignore-installed .
	cd po && $(MAKE) install PREFIX=$(shell echo 'import site; print(site.USER_BASE)' | python)

uninstall-desktop:
	rm -f $(PREFIX)/share/applications/$(desktopfile)

uninstall-schema:
	rm -f $(schemadir)/$(schemafile)
	glib-compile-schemas $(schemadir)

uninstall: uninstall-desktop uninstall-schema
	pip uninstall obmenu
