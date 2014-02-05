# Use TMUX notifications!
notification :tmux,
  :display_message => true,
  :default_message_format => '%s >> %s',
  :line_separator => ' > ' # since we are single line we need a separator
