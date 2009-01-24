require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'mocha' 
require 'I18n'

# RAILS doesnt know I18n.load_translations so we so we patch it
# outside of rails this is not neccesary
require 'I18n'
module I18n  
  class << self
    def load_translations(*args)
      backend.load_translations(*args)
    end
  end
end
  

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
