autoload -U compinit
autoload -U edit-command-line
autoload -U promptinit
autoload -U colors && colors

compinit
promptinit
prompt clint

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
setopt listpacked
setopt nohup
setopt nolisttypes
setopt promptsubst
setopt pushdignoredups
setopt SH_WORD_SPLIT

eval `dircolors -b`

#Keybinding

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey "^xe" edit-command-line
bindkey "^x^e" edit-command-line

#Export

export BROWSER="w3m"
export EDITOR="emacsclient -t"
export HISTFILE=~/.zsh_history
export HISTSIZE=500000
export SAVEHIST=500000
export TERM="rxvt-unicode-256color"

PROMPT="
$(print '%{\e[1;31m%}%n%{\e[0m%}') | $(print '%{\e[1;31m%}%~%{\e[0m%}')
%# "

#Alias

alias ls='ls --color=auto -F'
alias c='clear'
alias e='emacsclient -t'
alias r='reset'

if [[ "$TERM" == "dumb" ]]
then
  unsetopt zle
  unsetopt prompt_cr
  unsetopt prompt_subst
  unfunction precmd
  unfunction preexec
  PS1='$ '
fi

for file in $HOME/.zsh/rc/*.rc; do
        source $file
done
