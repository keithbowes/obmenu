.PHONY: all clean install-desktop install-schema install install-user
	uninstall-desktop uninstall-schema uninstall

PREFIX ?= $(shell echo 'import sys; print(sys.prefix)' | python)

appid=io.sourceforge.obmenu
desktopfile=$(appid).desktop
schemadir=$(PREFIX)/share/glib-2.0/schemas
schemafile=$(appid).gschema.xml

all:
	cd po && $(MAKE)
	./setup.py build

clean:
	cd po && $(MAKE) clean
	rm -fr build __pycache__

install-desktop:
	mkdir -p $(PREFIX)/share/applications
	cp -f $(desktopfile) $(PREFIX)/share/applications

install-schema:
	mkdir -p $(PREFIX)/share/glib-2.0/schemas
	cp -f $(schemafile) $(schemadir)
	glib-compile-schemas $(schemadir)

install: install-desktop install-schema
	./setup.py install --prefix=$(PREFIX) --record install_log.txt
	cd po && $(MAKE) install
	
install-user: install-schema
	./setup.py install --user --record install_log.txt
	cd po && $(MAKE) install PREFIX=$(shell echo 'import site; print(site.USER_BASE)' | python)

uninstall-desktop:
	rm -f $(PREFIX)/share/applications/$(desktopfile)

uninstall-schema:
	rm -f $(schemadir)/$(schemafile)
	glib-compile-schemas $(schemadir)

uninstall: uninstall-desktop uninstall-schema
	xargs rm -fr < install_log.txt
	rm -f install_log.txt
