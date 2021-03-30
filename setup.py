#!/usr/bin/env python

import os, sys, glob
from distutils.core import setup

libdir = 'share/obmenu'
localedir = 'share/locale'
sys.path += [os.path.join(os.curdir, libdir)]

setup(name='obMenu',
      version='1.1',
      description='Openbox Menu Editor',
      long_description='A Python script that allows you to edit menus for Openbox and clones thereof in an intuitive way',
      author='Manuel Colmenero',
      author_email='m.kolme@gmail.com',
      license='GPLv2',
      url='https://obmenu.sourceforge.net/',
      download_url='https://sourceforge.net/projects/obmenu/files/',
      scripts=['obmenu', 'pipes/obm-xdg','pipes/obm-dir','pipes/obm-nav'],
      py_modules=['obxml'],
      data_files=[(libdir, ['window.glade']), ("%s/icons" % libdir, ['icons/mnu16.png','icons/mnu48.png'])],
      )
