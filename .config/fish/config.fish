#Onload of terminal/tty
export EDITOR='nano'
if status is-interactive
    pfetch
end

#Login script for startx
if status is-login	
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx $HOME/.xinitrc
  end
end

#Prompt
function fish_prompt
    printf '%s%s $ %s' (set_color brblack) (dirs) (set_color normal)
end

#Global vars
export SUDO_PROMPT=' Password: '
export SSH_KEY_PATH="~/.ssh/id_rsa"

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

#SSH aliases
alias server='ssh ssh.nonamesmp.ga -l sven'

#Other aliases
alias btw='neofetch'
alias code='vscodium'
alias weer='curl wttr.in'
