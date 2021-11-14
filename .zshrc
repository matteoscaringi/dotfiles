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

#Plugins
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "desyncr/auto-ls"
zplug "djui/alias-tips"

if ! zplug check --verbose; then
     zplug install
fi

zplug load

#Prompt (no deps)
setopt PROMPT_SUBST
PS1=$'\e[90m$(dirs) $ \e[0m'

autoload -U colors && colors
PS1=$'%{$fg[white]%}$(dirs) $ %{$reset_color%}'

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
