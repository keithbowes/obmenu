.PHONY: all clean intall install-user unistall

PREFIX ?= /usr/local

all:
	cd po && $(MAKE)
	./setup.py build

clean:
	cd po && $(MAKE) clean
	rm -fr build __pycache__

install:
	./setup.py install --prefix=$(DESTDIR)$(PREFIX) --record install_log.txt
	cd po && $(MAKE) install
	
install-user:
	./setup.py install --user --record install_log.txt
	cd po && $(MAKE) install PREFIX=$(shell echo 'import site; print(site.USER_BASE)' | python)

uninstall:
	xargs rm -fr < install_log.txt
	rm -f install_log.txt
