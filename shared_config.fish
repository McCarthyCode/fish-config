#########################
# Environment variables #
#########################

set -gx STAGE development

###########
# Aliases #
###########

# Packages
abbr install "yes | sudo pacman -S"
abbr uninstall "yes | sudo pacman -R"
abbr upgrade "yes | sudo pacman -Syu; find ~/Repositories/AUR -mindepth 1 -maxdepth 1 -type d -exec sh -c '(cd {} && git pull && yes | makepkg -si --no-check)' ';'"

# Program shortcuts
abbr shred "shred -zvu -n 7"
abbr watch "watch -n 1"
abbr dd "sudo dd status=progress"

alias vol="pavucontrol"
alias cans="bluetoothctl power on; bluetoothctl connect EB:06:EF:4A:66:81"
alias scan="sudo arp-scan --interface=wlp2s0 --localnet"
alias clip="xclip -sel clip"
alias char="gnome-characters"
alias passff="curl -sSL github.com/passff/passff-host/releases/latest/download/install_host_app.sh | bash -s -- firefox"

# Development
abbr activate "source .venv/bin/activate.fish"
abbr front "cd /home/matt/Learning/Academind/Ionic+Angular/ionic-angular-course"
abbr back "cd /home/matt/Learning/Academind/Ionic+Angular/ionic_angular_course_back_end && activate"
abbr skka "cd /home/matt/Repositories/Susan-Kill-Kegan-and-Associates/ && activate"
abbr cwc "cd /home/matt/Repositories/Coolwater-Creations/ && activate"
abbr oaw "cd /home/matt/Repositories/Out-at-Wrigley/ && activate"
abbr mc "cd /home/matt/Repositories/McCarthy-Code/ && activate"
abbr ibe "cd /home/matt/Repositories/Iconopedia/back-end/ && source .venv/bin/activate.fish && source .env/environment_variables.fish"
abbr ife "cd /home/matt/Repositories/Iconopedia/front-end/ && source .venv/bin/activate.fish"

abbr ga "git add"
abbr gc "git commit -F .git/COMMIT_EDITMSG"
abbr gcam "git commit -am"
abbr gch "git checkout"
abbr gcp "git cherry-pick"
abbr gm "git merge"
abbr gp "git push"
abbr gr "git reset"
abbr gs "git status"
abbr gsh "git stash"
abbr amend "git commit --amend --no-edit"
abbr amend-edit "git commit --amend"
abbr diff "git diff --cached --color | less -R -N"

alias cache="git add .; git reset \*.css \*.map \*.min.js \*.jpg \*.jpeg \*.png \*.gif \*migrations\*; clear; git diff --cached --color | less -R -N"

# Shell
set -l cfg "$HOME/.config/fish/config.fish"
set -l shared_cfg "/etc/fish/config.fish"

abbr cls clear
abbr s "shared-cfg-edit && cfg"
abbr cjq "jq --color-output | less -R"

alias please="sudo"
alias q="exit"
alias cfg="source $shared_cfg"
alias cfg-edit="vim $cfg"
alias shared-cfg-edit="vim $shared_cfg"

# Networking
abbr fast "fast -u"
abbr wan "curl ifconfig.me/ip 2> /dev/null; echo"

# Power
abbr off "sudo poweroff"
abbr res "sudo reboot"

# Clipboard
abbr passg "passgen -n | xclip -selection c"

alias c="xclip -selection c"

# Weather
abbr weather "curl wttr.in"


###############
# User config #
###############

if [ -e $cfg ]
  source $cfg
end

