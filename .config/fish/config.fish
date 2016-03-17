# The fish folder should be linked in ~/.config/fish/
# Also in ~/.config/fish/functions

# Install on os x :
# add fish to accepted shells
# echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
# chsh -s /usr/local/bin/fish


# http://hackercodex.com/guide/install-fish-shell-mac-ubuntu/#basic-configuration
# set -Ux EDITOR atom
echo "Fish config loaded"

set -g -x fish_greeting ''
abbr -a g "git"
abbr -a h "heroku"
complete -c c  -a "(__fish_complete_directories (~/RubyOnRails/))"
set -gx PATH  /usr/local/heroku/bin $PATH


set rbenv_bin "$HOME/.rbenv/bin"
set brew_rbenv "/usr/local/var/rbenv/shims"
set local_bin "./bin"
set -gx PATH $local_bin $brew_rbenv $rbenv_bin $PATH

# rbenv exec gem install bundler solved it ?
# user hombrew for rbenv and ruby build

### Ruby (rbenv) ###
set -gx RBENV_ROOT /usr/local/var/rbenv
rbenv rehash >/dev/null ^&1


# Readline colors
set -g fish_color_autosuggestion 555 yellow
set -g fish_color_command 5f87d7
set -g fish_color_comment 808080
set -g fish_color_cwd 87af5f
set -g fish_color_cwd_root 5f0000
set -g fish_color_error 870000 --bold
set -g fish_color_escape af5f5f
set -g fish_color_history_current 87afd7
set -g fish_color_host 5f87af
set -g fish_color_match d7d7d7 --background=303030
set -g fish_color_normal normal
set -g fish_color_operator d7d7d7
set -g fish_color_param 5f87af
set -g fish_color_quote d7af5f
set -g fish_color_redirection normal
set -g fish_color_search_match --background=purple
set -g fish_color_status 5f0000
set -g fish_color_user 5f875f
set -g fish_color_valid_path --underline

set -g fish_color_dimmed 555
set -g fish_color_separator 999
