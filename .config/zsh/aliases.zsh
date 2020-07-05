alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias d="dotfiles"
# see functions.zsh for "dofiles add"'s alias "da"
alias dcn!="dotfiles commit -v --no-edit --amend "
alias dcmsg="dotfiles commit -m "
alias dst="dotfiles status"
alias dlogs="dotfiles log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

alias vedit="$EDITOR $HOME/.config/nvim/init.vim"
alias cocedit="$EDITOR $HOME/.config/nvim/coc-settings.json"

alias ls="exa --icons -s type"
alias lc="exa --long --header --icons -s type"
alias cat="bat"
alias catp="bat -p"
alias vi="nvim"
alias vim="nvim"
alias top="glances"
alias ca="conda activate"
alias sc="source activate"

# print each PATH entry on a separate line
alias printpath='print -rl $path'

