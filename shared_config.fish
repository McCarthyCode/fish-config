###########
# Aliases #
###########

# Packages
abbr install "sudo pacman -S"
abbr uninstall "sudo pacman -R"
abbr upgrade "sudo pacman -Syu"

# Program shortcuts
abbr shred "shred -zvu -n 7"
abbr watch "watch -n 1"
abbr dd "dd status=progress"
abbr suddo "sudo dd status=progress"
abbr lsvim "ls ~/.cache/vim/swap"
abbr llvim "ls -l ~/.cache/vim/swap"
abbr rmvim "rm ~/.cache/vim/swap/*"

alias cans="echo 'power on' | bluetoothctl; sleep 1; echo 'connect EB:06:EF:4A:66:81' | bluetoothctl"
alias scan="sudo arp-scan --interface=wlp2s0 --localnet"
alias clip="xclip -sel clip"
alias char="gnome-characters"

# Development
abbr cwc "cd ~/Repositories/Coolwater-Creations/ && source .env/bin/activate.fish"
abbr mc "cd ~/Repositories/McCarthy-Code/ && source .env/bin/activate.fish"
abbr skka "cd ~/Repositories/Susan-Kill-Kegan-and-Associates/ && source .env/bin/activate.fish"

abbr ga "git add"
abbr gc "git commit -F .git/COMMIT_EDITMSG"
abbr gm "git merge"
abbr gp "git push"
abbr gr "git reset"
abbr gs "git status"
abbr gsh "git stash"
abbr amend "git commit --amend --no-edit"
abbr amend-edit "git commit --amend"

alias cache="git add .; git reset \*.css \*.map \*.min.js \*.jpg \*.jpeg \*.png \*.gif \*migrations\*; clear; git diff --cached --color | less -R"
alias diff="git diff --cached --color | less -R"

# Shell
abbr cls clear
abbr c "shared-config-edit && config"

alias q="exit"
alias please="sudo"
alias config="source ~/.config/fish/config.fish"
alias config-edit="vim ~/.config/fish/config.fish"
alias shared-config-edit="vim ~/.config/fish/shared_config.fish"

# Networking
abbr fast "fast -u"
abbr wan "curl ifconfig.me/ip >&2; echo"

# Power
abbr off "sudo poweroff"
abbr res "sudo reboot"

