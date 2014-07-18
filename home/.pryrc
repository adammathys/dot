begin
  require 'rails'

  require 'rails/console/app'
  require 'rails/console/helpers'

  include Rails::ConsoleMethods
rescue LoadError
  warn "=> Unable to load rails."
end

begin
  require "awesome_print"
  AwesomePrint.pry!
rescue LoadError
end
