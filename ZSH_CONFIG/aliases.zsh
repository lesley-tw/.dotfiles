export EDITOR="nvim"

bindkey -e

alias vi="nvim"
alias vim="nvim"

alias zedit="$EDITOR $HOME/.zshrc"
alias ziedit="$EDITOR $ZSH_CONFIG/zinit.zsh "
alias aedit="$EDITOR $ZSH_CONFIG/aliases.zsh; source $ZSH_CONFIG/aliases.zsh"
alias eedit="$EDITOR $ZSH_CONFIG/environment.zsh; source $ZSH_CONFIG/environment.zsh"
alias pedit="$EDITOR $ZSH_CONFIG/package.zsh"
alias vedit="$EDITOR $HOME/.config/nvim/init.vim"
alias cocedit="$EDITOR $HOME/.config/nvim/coc-settings.json"

alias ca="conda activate"
alias sc="source activate"
alias grep="rp"
alias k="kubectl"
alias ls="exa --icons -s type"
alias lc="exa --long --header --icons -s type"

alias reload-credentials="rm $HOME/.aws/credentials $HOME/.aws/config && \
	                  launchctl unload -w $HOME/Library/LaunchAgents/com.aws.key.rotate.plist && \
			  launchctl load -w $HOME/Library/LaunchAgents/com.aws.key.rotate.plist"
alias dotfiles="/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias d="dotfiles"
alias dcn!="dotfiles commit -v --no-edit --amend "
alias dcmsg="dotfiles commit -m "
alias dst="dotfiles status"

# awscli
alias awsd="aws --profile spn-dev"
alias awss="aws --profile spn-stg"
alias awsp="aws --profile spn-prod"

# k9s
alias k9sd="k9s --context spn-dev"
alias k9ss="k9s --context spn-stg"
alias k9sp="k9s --context spn-prod"

# kubectl
alias kd="kubectl --context spn-dev"
alias ks="kubectl --context spn-stg"
alias kp="kubectl --context spn-prod"

# kubens/kubectx
alias kubens="kubectl config set-context --current --namespace "
alias kubectx="kubectl config use-context "

# list ssh hosts
alias ssh-hosts="grep -P \"^Host ([^*]+)$\" $HOME/.ssh/config | sed 's/Host //'"

