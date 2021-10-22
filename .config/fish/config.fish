export EDITOR='nano'
if status is-interactive
    pfetch
    alias btw='neofetch'
    starship init fish | source
end
if status is-login
  if test -z "$DISPLAY" -a $XDG_VTNR = 1
    exec startx $HOME/.xinitrc
  end
end