.PHONY: all clean
.SUFFIXES:
.SUFFIXES: .mo .po

deps=$(shell cat POTFILES)
pofiles=$(wildcard */obmenu.po)
mofiles=$(pofiles:.po=.mo)

all: $(mofiles)

clean:
	find . \( -name '*.mo' -o -name '*.po~' \) -exec rm -fv '{}' \;

%.mo: %.po
	msgfmt -o $@ $<

%.po: obmenu.pot
	msgmerge -Uq $@ $<

obmenu.pot: POTFILES
	xgettext -k_ -f $< -o $@

POTFILES: $(deps)
	touch $@
