#Onload script for startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
  exec startx $HOME/.xinitrc
fi

#Global vars
export EDITOR='nano'

#Local vars
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
AUTO_LS_COMMANDS=(ls)

#Init zplug
source /usr/share/zsh/scripts/zplug/init.zsh

#Prompt init
eval "$(starship init zsh)"

#Plugins
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search"

if ! zplug check --verbose; then
    zplug install
fi

zplug load

#Git aliases
alias g='git'
alias ga='git add -u'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gp='git push'
alias gr='git restore'
alias gf='git fetch -p'
alias gco='git checkout'
alias gcb='git checkout -b'
alias glc='git log --oneline | wc -l'

#Other aliases
alias btw='neofetch'
alias code='vscodium'
alias weer='curl wttr.in'

#Print system info
pfetch
