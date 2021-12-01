alias sudo="sudo "
alias dotfiles="git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME"
alias d="dotfiles"

alias dcmsg="dotfiles commit -m "
alias dcn!="dotfiles commit -v --no-edit --amend "
alias dlogs="dotfiles log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias dst="dotfiles status"

# print each PATH entry on a separate line
alias printpath='print -rl $path'

alias cat="bat"
alias catp="bat -p"
alias lc="exa --long --header --icons -s type"
alias ls="exa --icons -s type"
alias rg='rg --smart-case'
alias rgf='rg --files | rg --smart-case'
alias vi="nvim"
alias vim="nvim"
alias python="/usr/local/bin/python3"
alias pip="/usr/local/bin/pip3"
alias clr="clear && printf '\e[3J'"
alias ssh-hosts="ggrep -P \"^Host ([^*]+)$\" $HOME/.ssh/config | sed 's/Host //'"
alias tmux='TERM=xterm-256color tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias top="glances"
