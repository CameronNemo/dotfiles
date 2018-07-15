set -u fish_greeting

alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias xu='sudo xbps-install -Suv'

if test "$XDG_VTNR" = "1"; and test -z "$DISPLAY"; and test -z "$WAYLAND_DISPLAY";
	export DESKTOP_SESSION="sway"
	exec upstart --user
end

if test -x /usr/bin/fortune; and test -n "$PROMPT_COMMAND";
	/usr/bin/fortune
end
