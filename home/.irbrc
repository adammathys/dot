require 'rubygems'

begin
  require 'hirb'
  Hirb::View.enable
rescue LoadError => e
  warn "=> Unable to load hirb."
end

def tables
  ActiveRecord::Base.connection.tables
end

def structure(table)
  ActiveRecord::Base.connection.columns(table)
end

begin
  require 'pry'
  Pry.start
  exit
rescue LoadError => e
  warn "=> Unable to load pry."
end
