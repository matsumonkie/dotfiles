#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh
#chruby $(cat ~/.ruby-version)

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Use autojump
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=60

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# Aliases
alias e='emacs -nw'
#alias emacs='emacs -mm'
alias a='ack-grep'
alias -g G='| grep'
alias -g L='| less'
alias -g A='| a'
alias n='setxkbmap fr'
alias bd='~/conf/kbd/kbd.rb'

function f {
    find . -iname "*$1*"
}

# No auto correct
unsetopt correct
unsetopt correct_all

alias bepo='xkbcomp -w 0 -R/usr/share/X11/xkb ~/conf/kbd/vaio_bepo $DISPLAY'

source $ZSH/oh-my-zsh.sh

PATH="$PATH:/opt/sbt:/opt/play"

myBin=$('ls' -d /opt/**/bin | tr '\n' ':')
PATH="$PATH:$myBin"

PS1="$PS1
⮀ "

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

