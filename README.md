# OBMENU

Obmenu is a menu editor for Openbox and Wayland Openbox clones (like
[Waybox](https://github.com/wizbright/waybox)) written in Python. It allows you
to edit menus in an intuitive way.

## REQUIREMENTS

  [Python](http://python.org),
  [PyGObject](https://pygobject.readthedocs.io),
  [GTK](http://gtk.org/) 3 >= 3.12 or GTK 4 >= 4.10 (set the OBMENU_GTK4 environment variable to use experimental GTK 4 support)

  PyGObject 3 or higher is recommended, but older versions may also work.
  For Python 2.7 (not recommended) or older versions of Python 3, you'll need a
  PyGObect version less than 3.38.0.
  For GTK 4 support, you'll need PyGObject 3.40.0 or higher.

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

## CHANGELOG

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
