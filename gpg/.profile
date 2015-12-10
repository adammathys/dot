# ~/.profile: executed by the command interpreter for login shells.

# If running bash
if [ -n "$BASH_VERSION" ]; then
  # Include .bashrc if it exists
  if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
  fi
fi

# Set PATH so it includes user's private bin if it exists.
if [ -d "$HOME/.bin" ]; then
  PATH="$HOME/.bin:$PATH"
fi

# Invoke GnuPG-Agent the first time we login.
# Does `~/.gpg-agent-info' exist and points to gpg-agent process accepting signals?
if test -f $HOME/.gpg-agent-info && kill -0 `cut -d: -f 2 $HOME/.gpg-agent-info` 2>/dev/null; then
  GPG_AGENT_INFO=`cat $HOME/.gpg-agent-info | cut -c 16-`
else
  # No, gpg-agent not available; start gpg-agent
  eval `gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info`
fi
export GPG_TTY=`tty`
export GPG_AGENT_INFO
