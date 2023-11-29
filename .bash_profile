#!/bin/bash

#   -------------------------------
#   0. INITIAL MESSAGE
#   -------------------------------
    echo -e "\033[1;33m $(cat ~/.bash_conf/cabify_title) \033[0m\n"

#   -------------------------------
#   1. SET PATHS
#   -------------------------------

    export EDITOR="nvim"

    export BASH_CONF_PATH="$HOME/.bash_conf"
    export NVM_DIR="$HOME/.nvm"

#   -------------------------------
#   2. BASIC UTILS
#   -------------------------------

    export LC_ALL=en_US.UTF-8
    source $BASH_CONF_PATH/colors

#   -------------------------------
#   3. PROMPT CONFIGURATION
#   -------------------------------

    source $BASH_CONF_PATH/.bash_prompt
    source $BASH_CONF_PATH/.git-prompt.sh

#   -------------------------------
#   4. ALIASES AND FUNCTIONS
#   -------------------------------

    source $BASH_CONF_PATH/.bash_aliases
    source $BASH_CONF_PATH/.bash_functions
