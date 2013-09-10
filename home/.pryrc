begin
  require 'rails'

  require 'rails/console/app'
  require 'rails/console/helpers'

  include Rails::ConsoleMethods
rescue LoadError => e
  warn "=> Unable to load rails."
end
