# Custom aliases across all installations

# f "git commit message"
# git add all, git commit all with message 
# chose "f" because it's on the home row and the sensible aliases are all taken
function f() {
  gaa &&
  gcam $1 &&
  gp
}

# for creating new files
alias t="touch"

# open .zshrc in neovim
alias z="nvim ~/.zshrc"

# open nvim config
alias n="cd ~/.config/nvim && nvim ."

# termdown timer
function tt() {
  if [[ $# -eq 1 ]] ; then 
    termdown "$1"  && dunstify -t 60000 "Timer finished" "Clear with Super+space";
  fi
}

# to easily remember it
alias timer="termdown"

# Open zsh config file 
alias zsh="nvim ~/.zshrc"

# Open nvim config file
alias hypr="nvim ~/.config/hypr/hyprland.conf"

# open sound mixer
alias sound="ncpamixer"

# Fuzzy-search through all available pacakges, with package info shown in a 
# preview window, and then install selected packages
# (https://wiki.archlinux.org/title/Fzf#Arch_specific_fzf_uses)
alias p="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
#
# same as above but with yay
alias y="yay -Slq | fzf --multi --preview 'yay -Si {1}' | xargs -ro yay -S"

# open this file in neovim
alias openAlias="nvim ~/dotfiles/zsh/.oh-my-zsh/custom/alias.zsh"

# gs -> git status
alias gs="git status"
