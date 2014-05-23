# Use TMUX notifications!
notification :tmux,
  display_message: true,
  default_message_format: '%s >> %s',
  line_separator: ' > ', # since we are single line we need a separator
  color_location: 'status-left-bg' # to customize which tmux element will change color
