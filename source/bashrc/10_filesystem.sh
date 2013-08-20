# Files will be created with these permissions:
# files 644 -rw-r--r--
# dirs  755 drwxr-xr-x
umask 022

#######################
# Easier navigation
#######################
s_name=""
s_exec="cd "

for i in {1..10}; do
    # This may be overkill but covers a lot of traversal
    s_name="${s_name}.."
    s_exec="${s_exec}../"
    alias "${s_name}"="${s_exec}"
done

alias ~="cd ~"
alias -- -="cd -"


#######################
# Shortcuts
#######################
alias desktop="cd ~/Desktop"
alias downloads="cd ~/Downloads"
alias home="cd ${HOME}"



#######################
# Create
#######################
# create directory and cd into it
function mkcd() {
    mkdir -p "$@" && cd "$@"
}


#######################
# Open
#######################
# Opening Shortcuts
if [[ "$OSTYPE" =~ ^darwin ]]; then
    alias ofb="open ."
elif [[ `hash gnome-open 2>/dev/null` ]]; then
    alias ofb="gnome-open ."
elif [[ `hash nautilus 2>/dev/null` ]]; then
    alias ofb="nautilus ."
elif [[ `hash dolphin 2>/dev/null` ]]; then
    alias ofb="dolphin ."
fi
