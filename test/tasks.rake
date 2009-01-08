require 'rake/testtask'
 
desc 'Test the method_ni plugin.'
Rake::TestTask.new(:i18n_test) do |t|
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
  t.libs << 'test'
end