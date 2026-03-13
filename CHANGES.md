### 1.2.0 (FUTURE)

- Removal of GTK 3 support.
- Replaced the deprecated GtkTreeView, GtkComboBox, and GtkMessageDialog with GtkColumnView, GtkDropdown, and GtkAlertDialog.
- Removal of the [deprecated direct invocation of setup.py](https://blog.ganssle.io/articles/2021/10/setup-py-deprecated.html) from the command line.
- Bumped the required GTK version to 4.x >= 4.12.
- Bumped the required PyGObject version to 3.40.0 or higher.
- Bumped the required Python version to 3.x >= 3.8.

### 1.1.2

- Bug fixes.
- Bumped the required GTK version to 3.x >= 3.12 or 4.x >= 4.10.

### 1.1.1

- Bug fixes.

### 1.1

- Translation framework.
- Keyboard mnemonics for the various fields.
- Modernized GTK 3 support. Now requires GTK 3.4 or higher.
- GTK 4 support.
- Bumped the Python requirement to 3.x.
- Bumped the PyGObject requirement to 3.x.

### 1.0.1

- Switched to [PyGObject](http://pygobject.readthedocs.io/) for Python 3 and GTK 3 support.
- Support for [Waybox](http://github.com/wizbright/waybox).
- Requires Python 2.7.x or Python 3, PyGObject, and [GTK](http://gtk.org) 3.

### 1.0

- Automatically reconfigures Openbox
- Create and modify pipe menus. Pipe menus are a way of creating menus
  dynamically. For more info, visit Openbox documentation.
- The same with "link" menus, which are references to other menus by their IDs.
  That way you can reproduce a menu in several places of your file.
- Lots of GUI enhancements
- Multi-file support (New, Open, Save, ...)
- Requires [Python](http://python.org) 2.3–2.7.x and [PyGTK](http://pygtk.org]
