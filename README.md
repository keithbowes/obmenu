# OBMENU

Obmenu is a menu editor for Openbox and Wayland Openbox clones (like
[Waybox](https://github.com/wizbright/waybox) or
[LabWC](https://github.com/labwc/labwc/)) written in Python. It allows you to
edit menus in an intuitive way.

## REQUIREMENTS

  [Python](http://python.org) >= 3.8,
  [PyGObject](https://pygobject.readthedocs.io) >= 3.40,
  [GTK](http://gtk.org/) >= 4.10 with GLib >= 2.64,
  [build](https://pypi.org/project/build/) (for building) and [pip](https://pypi.org/project/pip/) (for installing) Python modules

  It should work with [PyPy](http://pypy.org), but there are no guarantees.
  If you use PyPy, you'll need the equivalents of the Python versions specified
  above.

  You no longer need pygtk and pyglade, required by [the original Obmenu](http://obmenu.sourceforge.net/).

## INSTALLATION

Type this command in a shell:

`make install-user`

or to install system-wide:

`sudo make install`

To just install the GSettings schema (required to remember the last opened menu
file) to use Obmenu without installing it:

`sudo make install-schema`

## KNOWN ISSUES

* The New menu item just deletes the current menu structure. This is a leftover
  from Manuel Colmenero's version. In the future, my hope is to implement
  spawning new windows, but there are blockers to doing this immediately.

### GTK 4 LIMITATIONS

These are regressions in the GTK 4 version (compared with the GTK 2 and GTK 3
versions) and can't be fixed by me, so please no bug reports about them.

1. There are no menu icons.
2. There's no text for toolbar icons.
3. There are no scrollbar steppers.
4. You must double click or press Enter on a treeview item to activate it. It's
   not automatically activated by tabbing or arrow keys (or single click).
5. New list models (representing menus) are created only when the parent is
   expanded, so therefore to create new menus, I collapse and then re-expand
   the parent row. This can cause other expanded rows under the parent row to
   collapse.

## CHANGELOG

### 1.2.0 (FUTURE)

- Removal of GTK 3 support.
- Replaced the deprecated GtkTreeView, GtkComboBox, and GtkMessageDialog with GtkColumnView, GtkDropdown, and GtkAlertDialog.
- Removal of the deprecated use of setup.py from the command line.

### 1.1.2

- Bug fixes.

### 1.1.1

- Bug fixes.

### 1.1

- Translation framework.
- Keyboard mnemonics for the various fields.
- Modernized GTK 3 support.
- GTK 4 support.

### 1.0.1

- Waybox/GTK+ 3/Python 3 support.

### 1.0

- Automatically reconfigures Openbox
- Create and modify pipe menus. Pipe menus are a way of creating menus
  dynamically. For more info, visit Openbox documentation.
- The same with "link" menus, which are references to other menus by their IDs.
  That way you can reproduce a menu in several places of your file.
- Lots of GUI enhancements
- Multi-file support (New, Open, Save, ...)

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
