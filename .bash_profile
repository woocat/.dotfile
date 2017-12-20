## about history

# append history instead of rewriting it
shopt -s histappend

# store history immediately
export PROMPT_COMMAND='history -a'

# don't store duplicate commands
export HISTCONTROL=ignoreboth

# ignore the follow command, ls, bg, fg, historry
export HISTIGNORE='ls:bg:fg:history'

# allow a larger history file
export HISTFILESIZE=1000000
