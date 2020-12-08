#########################
# Environment variables #
#########################

set -gx BROWSER /usr/bin/firefox
set -gx PATH $PATH $HOME/.local/bin
set -gx STAGE development
set -gx XDG_CONFIG_HOME $HOME/.config

#################
# Shared config #
#################

set -l shared_config $HOME/.config/fish/shared_config.fish
if [ -e $shared_config ]
  . $shared_config
end

