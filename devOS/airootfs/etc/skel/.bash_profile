# .bash_profile devOS

if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
  exec hyprland
fi