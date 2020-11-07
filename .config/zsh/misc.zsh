# Component: cd
# Purpose: auto cd to the specified directory
# Reference: https://unix.stackexchange.com/questions/126719/how-to-disable-auto-cd-in-zsh-with-oh-my-zsh
setopt auto_cd

# Component: ssh & slogin
# Purpose: completion with hosts in ~/.ssh/config & ~/.ssh/known_hosts
# Reference: https://stackoverflow.com/questions/54309712/zsh-doesnt-autocomplete-correctly-my-ssh-command
h=()
if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
fi
if [[ -r ~/.ssh/known_hosts ]]; then
    h=($h ${${${(f)'$(cat ~/.ssh/known_hosts{,2} || true)'}%%\ *}%%,*}) 2>/dev/null
fi
if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts $h
  zstyle ':completion:*:slogin:*' hosts $h
fi

# Component: fzf-tab
# Purpose: provide cd, cat (bat) & vim (nvim) preview
# Reference: https://github.com/Aloxaf/fzf-tab/wiki/Preview
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -1 --color=always --icons --group-directories-first $realpath'

zstyle ':fzf-tab:complete:(bat|nvim):*' fzf-preview '
  bat --style=numbers --color=always --line-range :200 $realpath 2>/dev/null ||
  exa -1 --color=always --icons --group-directories-first $realpath
'

# Component: fzf-tab & z.lua
# Purpose: use input as query string when completing z.lua
# Reference: https://github.com/Aloxaf/fzf-tab/wiki/Configuration#zstyle
zstyle ':fzf-tab:complete:_zlua:*' query-string input

# Component: fzf-tab
# Purpose: overwrite height
# Reference: https://github.com/Aloxaf/fzf-tab/wiki/Configuration#fzf-flags
zstyle ':fzf-tab:*' fzf-flags --height=75%

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/lesley_lin/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/lesley_lin/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/lesley_lin/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/lesley_lin/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
