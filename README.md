# OBMENU 1.0

Obmenu is a menu editor for Openbox and Waybox, written in Python. It allows
you to edit menus in an intuitive way.

## FORK

This is a fork of the original [obmenu](http://obmenu.sourceforge.net/) to
update it for Python 3/GTK 3 and to allow it to work with
[Waybox](https://github.com/wizbright/waybox).

## REQUIREMENTS

  [Python](http://python.org) >= 2.7,
  [PyGObject](https://pygobject.readthedocs.io)

  The main target is the currently supported versions of Python.  Support for
  older versions is purely incidental.  Please don't report issues affecting
  only EOL versions of Python (e.g. Python 2.x not being able to save menus
  with Unicode characters).

  You no longer need pygtk and python-glade, required by the original obmenu.

## INSTALLATION

Type this command in a shell:

`sudo python setup.py install`

## CHANGELOG

- Waybox/GTK 3/Python 3 support
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
