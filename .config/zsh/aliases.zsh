alias ca="conda activate"
alias cat="bat"
alias catp="bat -p"
alias clr="clear"
alias cocedit="$EDITOR $HOME/.config/nvim/coc-settings.json"
# see functions.zsh for "dofiles add"'s alias "da"
alias d="dotfiles"
alias dcmsg="dotfiles commit -m "
alias dcn!="dotfiles commit -v --no-edit --amend "
alias dlogs="dotfiles log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias dst="dotfiles status"
alias lc="exa --long --header --icons -s type"
alias ls="exa --icons -s type"
# print each PATH entry on a separate line
alias printpath='print -rl $path'
alias rg='rg --smart-case'
alias rgf='rg --files | rg --smart-case'
alias sc="source activate"
alias ssh-hosts="ggrep -P \"^Host ([^*]+)$\" $HOME/.ssh/config | sed 's/Host //'"
alias tmux='TERM=xterm-256color tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias top="glances"
alias vedit="$EDITOR $HOME/.config/nvim/init.vim"
alias vi="nvim"
alias vim="nvim"
