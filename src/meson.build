app_sources = [
  'Application.vala',
  'MainWindow.vala',
  'MainHeaderBar.vala',
  'NavHeaderBar.vala',
  app_constants,
  app_ui_resources
]

app_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
  dependency('libhandy-1', version: '>= 1.0.0'),
  dependency('gee-0.8')
]

app_c_args = [
  '-DHANDY_USE_UNSTABLE_API',
]

executable(app_binary, app_sources,
  vala_args: '--target-glib=2.50',
  dependencies: app_deps,
  c_args: app_c_args,
  install: true,
)
