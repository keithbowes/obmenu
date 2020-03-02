import os, sys, glob
from distutils.core import setup

libdir = 'share/obmenu'
sys.path += [os.path.join(os.curdir, libdir)]

setup(name='obMenu',
      version='1.0',
      description='Openbox/Waybox Menu Editor',
      author='Manuel Colmenero',
      author_email='m.kolme@gmail.com',
      scripts=['obmenu', 'pipes/obm-xdg','pipes/obm-dir','pipes/obm-nav'],
      py_modules=['obxml'],
      data_files=[(libdir, ['about.glade', 'window.glade', 'icons/mnu16.png','icons/mnu48.png'])]
      )
