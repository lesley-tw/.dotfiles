export TERM="xterm-256color"
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export VISUAL=nvim
export EDITOR="$VISUAL"

export PAGER=less
export LESS=-RF

export FZF_DEFAULT_COMMAND="rg --files --hidden"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS="--height 60% --layout=reverse --border --bind=tab:accept"

export ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_MANUAL_REBIND=1

export PATH="/usr/local/opt/mysql-client/bin:$PATH"
export PATH=$HOME/.local/bin:/Users/lesley_lin/anaconda3/bin:$PATH
export PYTHONPATH=$HOME/splunk-sdk-python-1.6.6:$PYTHONPATH
# export JAVA_HOME=$(/usr/libexec/java_home)
