#!/bin/bash
#
#  Description:  This file holds all my BASH configurations
#
#  Sections:
#  1.  Set Paths
#  2.  Prompt Configuration
#  3.  Aliases and Functions
#


#   -------------------------------
#   0. INITIAL MESSAGE
#   -------------------------------
    echo -e "\033[1;33m $(cat ~/.bash_conf/cabify_title) \033[0m\n"

#   -------------------------------
#   1. SET PATHS
#   -------------------------------

    export EDITOR="nvim"

    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                            # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"          # This loads nvm bash_completion

    export BASH_CONF_PATH="$HOME/.bash_conf"
    export NVM_DIR="$HOME/.nvm"

    export GOROOT="/usr/local/opt/go@1.21/libexec"
    export GOPATH="$HOME/go"
    export GOBIN="$GOPATH/bin"
    export OPENSSL="/usr/local/opt/openssl"

    PATH="$PATH:$GOROOT/bin"
    PATH="$PATH:$GOBIN"
    PATH="$PATH:$OPENSSL@1.1/bin"
    PATH="$PATH:/usr/local/opt/yq@3/bin"

    PATH="$PATH:/usr/local/opt/gradle@7/bin"

#   -------------------------------
#   2. BASIC UTILS
#   -------------------------------

    export LC_ALL=en_US.UTF-8
    export BASH_SILENCE_DEPRECATION_WARNING=1
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
#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------

#   Set default blocksize for ls, df, du
#   ------------------------------------------------------------
#    export BLOCKSIZE=1k

#   -------------------------------
#   5. ITERM
#   -------------------------------
    source $BASH_CONF_PATH/.bash_iterm

#   -------------------------------
#   6. GNU
#   -------------------------------
    PATH="$PATH:/usr/local/opt/findutils/libexec/gnubin"
    PATH="$PATH:/usr/local/opt/coreutils/libexec/gnubin"
    PATH="$PATH:/usr/local/opt/gnu-sed/libexec/gnubin"

#   -------------------------------
#   7. SDK
#   -------------------------------
    
    export GSUIT_SDK_PATH="$HOME/Documents/dev/others/sdk/google-cloud-sdk"
    PATH="$PATH:$GSUIT_SDK_PATH/bin"

#   -------------------------------
#   8. CABIFY
#   -------------------------------

    export GOPRIVATE="gopkg.cabify.tools,gitlab.otters.xyz,secondary.gitlab.otters.xyz,gitlab.com/cabify,github.com/cabify"
    export GONOSUMDB="gopkg.cabify.tools/*,gitlab.otters.xyz/*,secondary.gitlab.otters.xyz/*,gitlab.com/cabify/*"
    export CI_REGISTRY="gitlab.otters.xyz:5005"
    export BUNDLE_GITHUB__COM=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
    export BUNDLE_GITLAB__OTTERS__XYZ=yLi74kcpfDdaFk3NLfqY

#   -------------------------------
#   9. DOCKER
#   -------------------------------

    export DOCKER_API_VERSION="1.42"

#   -------------------------------
#   10. OTHER
#   -------------------------------

    export TESSDATA_PREFIX="/usr/local/share/tessdata"
    export KUBECONFIG=/Users/xabier/.kube/config
    export PATH="$PATH:$HOME/.krew/bin"


    test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
    . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/xabier/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/xabier/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/xabier/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/xabier/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/xabier/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/xabier/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/xabier/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/xabier/Downloads/google-cloud-sdk/completion.bash.inc'; fi
. "$HOME/.cargo/env"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/xabier/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
