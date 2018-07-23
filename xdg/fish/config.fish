set -u fish_greeting

alias xin='sudo xbps-install'
alias xrm='sudo xbps-remove'
alias xup='sudo xbps-install -Suv'

if test "$XDG_VTNR" = "1"; and test -z "$DISPLAY"; and test -z "$WAYLAND_DISPLAY";
	export DESKTOP_SESSION="sway"
	exec upstart --user
end

if test -x /usr/bin/fortune; and test -n "$PROMPT_COMMAND";
	/usr/bin/fortune
end
