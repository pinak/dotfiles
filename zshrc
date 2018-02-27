# Oh my zsh!
export ZSH=/home/pinak/.oh-my-zsh
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
plugins=(git archlinux kubectl)
source $ZSH/oh-my-zsh.sh

source /opt/google-cloud-sdk/completion.zsh.inc

# Source the actual dotfiles
for DOTFILE in `find ~/.dotfiles -maxdepth 1 -name '*.source' -type f`
do
  source "$DOTFILE"
done
