#!/bin/bash

export PS1="\u@\h \w $ "

alias c='clear'

export BASH_COMPLETION_COMPAT_DIR="/usr/local/etc/bash_completion.d"
[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"
source <(golangci-lint completion bash)

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
