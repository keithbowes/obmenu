# CHANGES

This document summarizes the changes between the versions of Obmenu.

## Versioning policy

I follow a &lt;major&gt;.&lt;minor&gt;.&lt;micro&gt; versioning scheme.
&lt;micro&gt; represents minor changes not perceptible to an end user, unless that end user had experienced bugs fixed in the new version.
&lt;minor&gt; represents new features or more often replacements for GTK deprecations that cause a perceptible difference in the UI.
I'm not sure what a reason for bumping &lt;major&gt; would be.

About required dependencies, the policy is not to release a new version until the requirements are at least two years old. Fixes can be backported in the meantime.
This is consistent with Manuel Colmenero's first version, released 2005-12-15, which required at least Python 2.3, which was released 2003-07-29.
This is also consistent with the GTK developers' advice to wait 18 months after a new GTK version is released before porting to it.

## FUTURE

- Migrated from setup.py to the Meson build system.
- New requirement: libadwaita >= 1.5
- Bumped the required Python version to 3.x >= 3.10.

## 1.2.0 (2026-03-17)

- Removal of GTK 3 support.
- Replaced the deprecated GtkTreeView, GtkComboBox, and GtkMessageDialog widgets with GtkColumnView, GtkDropdown, and GtkAlertDialog.
- Removal of the [deprecated direct invocation of setup.py](https://blog.ganssle.io/articles/2021/10/setup-py-deprecated.html) from the command line.
- Bug fixes.
- Added Open, New Pipe, and New Link items to the toolbar.
- Bumped the required GTK version to 4.x >= 4.12.
- Bumped the required PyGObject version to 3.40.0 or higher.
- Bumped the required Python version to 3.x >= 3.8.
- The minimum required version of GLib is now 2.64, but that shouldn't be a problem, considering that GTK 4.12 requires GLib >= 2.76.

## 1.1.2 (2024-05-10)

- Bug fixes.
- By default uses GTK 3 instead of GTK 4 now. Use the environment variable `OBMENU_GTK4=1` to use the GTK 4 version.
- Bumped the required GTK version to 3.x >= 3.12 or 4.x >= 4.10.

## 1.1.1 (2021-04-02)

- Bug fixes.
- More code shared between the GTK 3 and GTK 4 versions.
- Now defaults to GTK 4 (if the requirements are met). You can use the environment variable `OBMENU_GTK_VERSION=3.0` to force using with GTK 3.

## 1.1 (2021-03-31)

- Replaced some deprecated widgets. Obmenu might look slightly different as a result.
- Translation framework.
- Keyboard mnemonics for the various fields.
- Modernized GTK 3 support. Now requires GTK 3.4 or higher.
- Use of a GLib schema to keep automatically open the last opened menu file. Requires GLib >= 2.32.
- Bug fixes.
- Migrated to Gtk.Application.
- GTK 4 support.
- Uses GTK 4 if available, GTK 3 otherwise.
- Bumped the Python requirement to 3.x.
- Bumped the PyGObject requirement to 3.x. 3.40.0 or higher is required for GTK 4.

## 1.0.1 (2020-03-02)

- Switched from PyGTK to [PyGObject](http://pygobject.readthedocs.io/) for Python 3 and GTK 3 support.
- Support for [Waybox](http://github.com/wizbright/waybox).
- Added accelerators to the File menu.
- Added a keyboard shortcut for Save As.
- Bug fixes.
- Requires Python 2.7.x or Python 3, PyGObject, and [GTK](http://gtk.org) 3.

## 1.0 (2006-02-09)

- Automatically reconfigures Openbox
- Create and modify pipe menus. Pipe menus are a way of creating menus
  dynamically. For more info, visit Openbox documentation.
- The same with "link" menus, which are references to other menus by their IDs.
  That way you can reproduce a menu in several places of your file.
- Lots of GUI enhancements
- Multi-file support (New, Open, Save, ...)
- The last version by Manuel Colmenero.

## 0.9.2 (2005-12-15)

- Manuel Colmenero's first published version.
- Requires [Python](http://python.org) 2.3 or better, [pygtk](http://pygtk.org), and pyglade.
