require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mocha' 
require 'I18n'
begin
  require 'ruby-debug'
rescue LoadError
  puts "ruby-debug not loaded"
end
begin
  require 'redgreen'
rescue LoadError
  puts "redgreen not loaded"
end

PLUGIN_ROOT = File.join(File.dirname(__FILE__), '..')
Dir[ File.join(PLUGIN_ROOT, 'locales/**/', '*.{rb,yml}') ].each do |translation|
  I18n.load_translations translation
end
