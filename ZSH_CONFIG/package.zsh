# vivid
export LS_COLORS="$(vivid generate molokai)"

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

