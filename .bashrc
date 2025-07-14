# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Vim is the goto editor
EDITOR=/usr/bin/vim

# Prettify manpages
export MANPAGER=most

# Shortcut for copying to clipboard
alias clip='xclip -selection clipboard'

# Shortcut for eza file listing
alias ll='eza -l'

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# tmux
if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# liquidprompt
[[ $- = *i* ]] && source ~/Projects/liquidprompt/liquidprompt

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - bash)"
