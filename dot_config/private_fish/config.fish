if status is-interactive
    # Commands to run in interactive sessions can go here
    fish_config theme choose "Dracula Official"
end

function fish_greeting
    printf "\n"
    neofetch
end

function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

function clippy
    xclip -selection clipboard
end

# use alacritty
export TERMCMD="alacritty"
