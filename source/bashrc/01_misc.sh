# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Reload the bashrc file
alias reload="source ~/.bashrc && echo Bash config reloaded"

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Single letter clear
alias c="clear"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"
