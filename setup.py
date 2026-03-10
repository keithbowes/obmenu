#!/usr/bin/env python

import os, sys, glob
from distutils.core import setup
import obmenu_version

libdir = 'share/obmenu'
sys.path += [os.path.join(os.curdir, libdir)]

def get_version():
	return obmenu_version.VERSION

setup(name='Obmenu',
      version=get_version(),
      description='Openbox Menu Editor',
      long_description='A Python script that allows you to edit menus for Openbox and clones thereof in an intuitive way',
      author='Manuel Colmenero',
      author_email='m.kolme@gmail.com',
      license='GPLv2',
      url='https://obmenu.sourceforge.net/',
      download_url='https://sourceforge.net/projects/obmenu/files/',
      scripts=['obmenu', 'pipes/obm-xdg','pipes/obm-dir','pipes/obm-nav'],
      py_modules=['obmenu_version', 'obxml'],
      data_files=[(libdir, ['obmenu.ui']), ("%s/icons" % libdir, ['icons/mnu16.png','icons/mnu48.png'])],
      )
