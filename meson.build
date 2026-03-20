project(
  'Obmenu',
  version: '1.2.0',
  meson_version: '>=0.57'
  )

dependency('gtk4', version: '>=4.12')
dependency('libadwaita-1', version: '>=1.5')
dependency('pygobject-3.0', version: '>=3.40.0')

gnome = import('gnome')
python = import('python')

py = python.find_installation('python3', modules: ['gi', 'locale', 'os', 'random', 'sys', 'time'], required: true)
find_program('python3', version: '>=3.10')

app_id = 'io.sourceforge.obmenu'
appfiles = files(app_id + '.desktop')
data = files('obmenu.ui')
docs = files('CHANGES.md', 'COPYING', 'README.md', 'obxml-help', 'pipes-help')
icons = files('icons/mnu16.png', 'icons/mnu48.png')
modules = files('obxml.py')
schemas = files(app_id + '.gschema.xml')
pipes = files('pipes/obm-dir', 'pipes/obm-nav', 'pipes/obm-xdg')

cfg_data = configuration_data()
cfg_data.set('VERSION', meson.project_version())
cfg_data.set('datadir', get_option('prefix') / get_option('datadir') / meson.project_name().to_lower())
cfg_data.set('localedir', get_option('prefix') / get_option('localedir'))

install_data(
  appfiles,
  install_dir: get_option('prefix') / get_option('datadir') / 'applications',
  install_mode: 'rw-r--r--',
  )

install_data(
  data,
  install_dir: get_option('prefix') / get_option('datadir') / meson.project_name().to_lower(),
  install_mode: 'rw-r--r--',
  )

if get_option('install-docs')
  install_data(
    docs,
    install_dir: get_option('prefix') /get_option('datadir') / 'doc' / meson.project_name().to_lower(),
    install_mode: 'rw-r--r--',
    )
endif

install_data(
  icons,
  install_dir: get_option('prefix') / get_option('datadir') / 'icons',
  rename: ['obmenu16.png', 'obmenu48.png'],
  install_mode: 'rw-r--r--',
  )

py.install_sources(modules)

if get_option('install-pipes')
  install_data(
    pipes,
    install_dir: get_option('prefix') / get_option('bindir'),
    install_mode: 'rwxr-xr-x',
    )
endif

if get_option('install-schemas')
  install_data(
    schemas,
    install_dir: get_option('prefix') / get_option('datadir') / 'glib-2.0/schemas',
    install_mode: 'rw-r--r--',
    )
endif

configure_file(
  configuration: cfg_data,
  input: 'obmenu',
  output: 'obmenu',
  install: true,
  install_dir: get_option('prefix') / get_option('bindir'),
)

subdir('po')

gnome.post_install(
  glib_compile_schemas: get_option('install-schemas')
)
