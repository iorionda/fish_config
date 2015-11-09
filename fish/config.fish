# Path to Oh My Fish install.
set -gx OMF_PATH /Users/iori/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/iori/.config/omf

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish

# Theme
set fish_theme agnoster

# PATH
set -gx PATH $HOME/bin /usr/local/bin $HOME/.rbenv/shims $PATH

# nodebrew
set -gx PATH $HOME/.nodebrew/current/bin $PATH

# rbenv
set -gx RBENV_ROOT $HOME/.rbenv

function cd
  builtin cd $argv
  ls -la
end

function fish_user_key_bindings
  bind \cr peco-select-history
  bind \ce peco-select-ghq-repository
end
