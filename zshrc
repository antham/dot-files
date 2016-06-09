autoload -U colors && colors
autoload -U compinit
autoload -U edit-command-line
autoload -U promptinit

compinit
promptinit

zle -N edit-command-line

#Options

setopt alwaystoend
setopt autocd
setopt automenu
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
setopt cdablevars
setopt completeinword
setopt correct
setopt emacs
setopt extendedglob
setopt globdots
setopt histignorealldups
setopt histignorespace
setopt histreduceblanks
setopt sharehistory
setopt listpacked
setopt nohup
setopt nolisttypes
setopt promptsubst
setopt SH_WORD_SPLIT

eval `dircolors -b`

#Load config files

for file in $HOME/.zsh/rc/*; do
        source $file
done

#Keybinding

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey "^xe" edit-command-line
bindkey "^x^e" edit-command-line

#Export

export BROWSER="w3m"
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -t"
export HISTFILE=~/.zsh_history
export HISTSIZE=500000
export SAVEHIST=500000

#Prompt

prompt adam2

#Alias

alias ls='ls --color=auto -F'
alias c='clear'
alias e='emacsclient -t'
alias r='reset'
alias sinh="cat ~/.zsh_history|ack --nocolor --nogroup -i"

if [[ "$TERM" != "dumb" ]]
then
  export TERM="screen"
fi

. /etc/profile.d/fzf.zsh
export SMAN_APPEND_HISTORY=false
export SMAN_SNIPPET_DIR="~/dot-files/snippets"
export SMAN_EXEC_CONFIRM=false
