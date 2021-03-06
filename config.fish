alias cat=bat
alias ls=exa
alias e="emacsclient -t"
alias j=z

set fzf_preview_file_cmd cat
set fzf_preview_dir_cmd exa --all --color=always
set fzf_fd_opts --hidden --exclude=.git
set EDITOR "emacsclient -t"
set VISUAL "emacsclient -t"

zoxide init fish | source
starship init fish | source

