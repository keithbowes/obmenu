.PHONY: all clean install uninstall update-po
.SUFFIXES:
.SUFFIXES: .mo .po

PREFIX ?= /usr/local

deps=$(shell cat POTFILES)
linguas=$(shell cat LINGUAS)
pofiles=$(addsuffix .po,$(linguas))
mofiles=$(pofiles:.po=.mo)

localedir=$(DESTDIR)$(PREFIX)/share/locale

all: $(mofiles)

clean:
	rm -fv *.mo *.po~

install: all
	$(foreach l,$(linguas),mkdir -p $(localedir)/$l/LC_MESSAGES;\
		install -m 644 $l.mo $(localedir)/$l/LC_MESSAGES/obmenu.mo;)

uninstall:
	rm -f $(wildcard $(DESTDIR)$(PREFIX)/share/locale/*/obmenu.mo)

update-po: $(pofiles)

.po.mo:
	msgfmt -o $@ $<

%.po: obmenu.pot
	msgmerge -Uq $@ $<

obmenu.pot: POTFILES
	xgettext -k_ -f $< -o $@

POTFILES: $(deps)
	touch $@
