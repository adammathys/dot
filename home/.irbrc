require 'irbtools'
require 'hirb'

Hirb::View.enable

def tables
  ActiveRecord::Base.connection.tables
end

def structure(table)
  ActiveRecord::Base.connection.columns(table)
end
