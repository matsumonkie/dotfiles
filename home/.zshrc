#OS='MAC'
OS='LINUX'

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Editor
export EDITOR='emacsclient -nw -t'

# Theme
ZSH_THEME="ys"
DEFAULT_USER="$USER"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=60

# No duplicate
setopt hist_ignore_all_dups

# No autocorrect
unsetopt correct_all
unsetopt correct
setopt nocorrectall
DISABLE_CORRECTION="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git fasd)

# Chruby
#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh

source $ZSH/oh-my-zsh.sh
source $HOME/.path
source $HOME/.aliases
#source $HOME/.bin/tmuxinator.zsh

#PS1="$PS1
#⮀ "
