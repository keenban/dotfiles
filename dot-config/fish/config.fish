if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    if test (random 0 9) -eq 0
        fortune | cowthink -f $(shuf -n 1 "$XDG_CONFIG_HOME"/fish/allowedcows)
    end
end

function clippy
    xclip -selection clipboard
end

function eac
    set wineprefix "$HOME/.eac-prefix"
    set eacdir "$wineprefix/drive_c/Program Files/Exact Audio Copy"
    pushd "$eacdir/Microsoft.VC80.CRT"
    set -x WINEPREFIX $wineprefix
    set -x WINEDEBUG -all
    wine "$eacdir/EAC.exe"
    popd
end

# use alacritty
export TERMCMD="alacritty"
