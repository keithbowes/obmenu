# OBMENU

Obmenu is a menu editor for Openbox written in Python. It allows you to edit menus in an intuitive way.

This is a fork of [the original Obmenu](http://obmenu.sourceforge.net/), updated for modern environments.

For modern environments, you can use a Wayland Openbox clone like
[Waybox](https://github.com/wizbright/waybox) or [LabWC](https://github.com/labwc/labwc/). You can
also use [my
script](https://raw.githubusercontent.com/keithbowes/waybox/refs/heads/master/data/menu) to use a
menu file wherever [Rofi](https://davatorium.github.io/rofi/) by setting the `WB_MENU_XML`
environment variable to your menu.xml file and then running `rofi -show menu:menu`.


## REQUIREMENTS

* [Python](http://python.org) >= 3.8
* [PyGObject](http://pygobject.gnome.org) >= 3.40
* [GTK](http://gtk.org/) >= 4.12

If you don't meet the requirements, you might be able to use an older version. See [CHANGES.md](CHANGES.md) for the requirements of older versions.

## INSTALLATION

To install, you'll need either [Meson](http://mesonbuild.com/) >= 0.57 or [muon](http://muon.build/) >= 0.4.0.

To install:
```
meson setup build
meson compile -C build
sudo meson install -C build
```

Using muon instead of Meson:
```
muon setup build
muon samu -C build
sudo muon samu -C build install
```

To install without the pipe menus:
```
meson setup -Dinstall-pipes=false build
```

or the equivalent command with muon.

To install without root access:
```
meson setup -Dprefix=$HOME/.local build
```

or equivalent.

## KNOWN ISSUES

* The New menu item just deletes the current menu structure. This is a leftover
  from Manuel Colmenero's version. In the future, my hope is to implement
  spawning new windows, but there are blockers to doing this immediately.
* You have to press Tab twice to be able to expand the root menu, even though
  it's selected. This is obviously not a problem if you're using a pointing
  device.

### GTK 4 LIMITATIONS

These are regressions in the GTK 4 version (compared with the GTK 2 and GTK 3
versions) and can't be fixed by me, so please no bug reports about them.

1. There are no menu icons.
2. There's no text for toolbar icons.
3. There are no scrollbar steppers.
4. Tabbing behaves slightly differently.

## CREDITS

> Manuel Colmenero 2005-2006

> Thanks to Mikael from the Openbox project, who gave me lots of ideas and
> tested the program. And thanks to all the helpful guys in the openbox
> list.

## NOTICE

> This program is free software; you can redistribute it and/or modify
> it under the terms of the GNU General Public License as published by
> the Free Software Foundation; either version 2 of the License, or
> (at your option) any later version.

> This program is distributed in the hope that it will be useful,
> but WITHOUT ANY WARRANTY; without even the implied warranty of
> MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> GNU General Public License for more details.

> You should have received a copy of the GNU General Public License
> along with this program; if not, write to the Free Software
> Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
