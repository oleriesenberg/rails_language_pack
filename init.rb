PLUGIN_ROOT = File.join(File.dirname(__FILE__))
I18n.load_path += Dir[ File.join(PLUGIN_ROOT, 'locales/**/', '*.{rb,yml}') ]