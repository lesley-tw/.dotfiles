if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $HOME/ZSH_CONFIG/environment.zsh

typeset -ga sources
sources+="$ZSH/oh-my-zsh.sh"
sources+="<(kubectl completion zsh)"
sources+="$ZSH_CONFIG/zinit.zsh"
sources+="$ZSH_CONFIG/aliases.zsh"
sources+="$ZSH_CONFIG/package.zsh"

foreach file (`echo $sources`)
    if [[ -a $file ]]; then
        source $file
    fi
end

