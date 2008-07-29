begin
  require File.join(RAILS_ROOT, 'lib', 'haml') # From here
rescue LoadError
  require 'haml' # From gem
end

Haml.init_rails(binding)
