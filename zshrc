# Oh my zsh!
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
plugins=(git docker colorize)

OPERATING_SYSTEM=$(uname -s)
if [[ $OPERATING_SYSTEM == Darwin ]]; then
    plugins+=brew
fi

source $ZSH/oh-my-zsh.sh

# Source the actual dotfiles
for DOTFILE in `find ~/.dotfiles -maxdepth 1 -name '*.source' -type f`
do
  source "$DOTFILE"
done
