# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'

fastfetch --logo-type builtin --logo Locos
export LIBVA_DRIVER_NAME=nvidia
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
eval "$(mise activate bash)"

export RAILS_ENV=development
export OMARCHY_SCREENSHOT_DIR="$HOME/Media/Screenshots"
export OMARCHY_SCREENRECORD_DIR="$HOME/Media/Recordings"
