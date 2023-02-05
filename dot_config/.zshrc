# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
case $TERM in
  xterm*)
    ZSH_THEME="agnoster";;
  *)
    ZSH_THEME="";;
esac

# Add wisely, as too many plugins slow down shell startup.
plugins=(
  sudo
  colored-man-pages
  fzf
  direnv
  gcloud
  aws
  kubectl
  git
  golang
  npm
  nvm
)
source $ZSH/oh-my-zsh.sh

# Enable GVM
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# Enable spicetify-cli
# export SPICETIFY_INSTALL="$HOME/spicetify-cli"
# export PATH="$SPICETIFY_INSTALL:$PATH"
export PATH=$PATH:$HOME/.spicetify
fpath+=${ZDOTDIR:-~}/.zsh_functions

# alias to some work shortcuts
for file in ~/work/.alias_*; do
  source "$file"
done

#################
# My own aliases
alias ll='ls -AlF'

