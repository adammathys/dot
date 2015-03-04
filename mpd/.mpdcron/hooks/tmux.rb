#!/usr/bin/env ruby

if ENV['MPD_STATUS_STATE'] == 'play'
  `tmux set message-bg blue > /dev/null`
  `tmux display-message "Now Playing: $(ncmpcpp --now-playing '%t - %a - %b')"`
else
  `tmux set message-bg colour130 > /dev/null`
  `tmux display-message "Music Stopped"`
end
