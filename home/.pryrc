if defined? Hirb
  Hirb.enable

  Pry.config.print = proc do |output, value|
    Hirb::View.view_or_page_output(value) || Pry::DEFAULT_PRINT.call(output, value)
  end
end

Pry.config.theme = 'vim-detailed'
Pry.config.pager = false
Pry.config.editor = 'vim'
