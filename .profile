#                        _____ __   
#      ____  _________  / __(_) /__ 
#     / __ \/ ___/ __ \/ /_/ / / _ \
#    / /_/ / /  / /_/ / __/ / /  __/
#   / .___/_/   \____/_/ /_/_/\___/ 
#  /_/                              
#
#=====| bashrc |=====#
if [ -f "$HOME"/.bashrc ]; then
    . "$HOME"/.bashrc
fi
#=====| defaults |=====#
export EDITOR="vim"
export TERMINAL="st"
export BROWSER="librewolf"
export PAGER="less"
#=====| xdg dirs |=====#
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
#=====| home cleanup |=====#
export RANDFILE="$XDG_DATA_HOME"/rnd
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc                                 
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass                               
export HISTFILE="$XDG_STATE_HOME"/bash/history                              
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export WGETRC="$XDG_CONFIG_HOME"/wget/wgetrc
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export PYTHON_HISTORY=$XDG_STATE_HOME/python_history
export WINEPREFIX="$XDG_DATA_HOME"/wineprefixes/default
