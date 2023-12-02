#!/bin/bash
#
#  Description:  This file holds all my custom functions
#
#  Sections:
#  1.  File and Folder Management
#  2.  Searching
#  3.  Process Management
#  4.  Networking
#  5.  Web Development
#
tmux_init () {
  if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux
  fi
}
#
# #   -------------------------------
# #   1. FILE AND FOLDER MANAGEMENT
# #   -------------------------------
#
#     mcd () { mkdir -p "$1" && cd "$1"; }                                        # mcd:              Makes new Dir and jumps inside
#     trash () { command mv "$@" ~/.Trash ; }                                     # trash:            Moves a file to the MacOS trash
#     # cd () { builtin cd "$@"; ll; }                                            # cd:               Overwrites cd(). Always list directory contents upon 'cd'
#     mans () { man $1 | grep -iC2 --color=always $2 | less ; }                   # mans:             Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#                                                                                 #                   Displays paginated result with colored search terms and two lines surrounding each hit.
#                                                                                 #                   Example: mans mplayer codec
#     zipf () { zip -r "$1".zip "$1" ; }                                          # zipf:             To create a ZIP archive of a folder
#     extract () {                                                                # extract:          Extract most know archives with one command
#         if [[ -f $1 ]] ; then
#           case $1 in
#             *.tar.bz2)   tar xjf $1     ;;
#             *.tar.gz)    tar xzf $1     ;;
#             *.bz2)       bunzip2 $1     ;;
#             *.rar)       unrar e $1     ;;
#             *.gz)        gunzip $1      ;;
#             *.tar)       tar xf $1      ;;
#             *.tbz2)      tar xjf $1     ;;
#             *.tgz)       tar xzf $1     ;;
#             *.zip)       unzip $1       ;;
#             *.Z)         uncompress $1  ;;
#             *.7z)        7z x $1        ;;
#             *)     echo "'$1' cannot be extracted via extract()" ;;
#              esac
#          else
#              echo "'$1' is not a valid file"
#          fi
#     }
#
# #   ---------------------------
# #   2. SEARCHING
# #   ---------------------------
#
#     alias qfind="find . -name "                                                 # qfind:            Quickly search for file
#     ff () { /usr/bin/find . -name "$@" ; }                                      # ff:               Find file under the current directory
#     ffs () { /usr/bin/find . -name "$@"'*' ; }                                  # ffs:              Find file whose name starts with a given string
#     ffe () { /usr/bin/find . -name '*'"$@" ; }                                  # ffe:              Find file whose name ends with a given string
#
# #   ---------------------------
# #   3. PROCESS MANAGEMENT
# #   ---------------------------
#
#     findPid () { lsof -t -c "$@" ; }                                            # findPid:          Find out the pid of a specified process
#                                                                                 #                   Note that the command name can be specified via a regex
#                                                                                 #                   E.g. findPid '/d$/' finds pids of all processes with names ending in 'd'
#                                                                                 #                   Without the 'sudo' it will only find processes of the current user
#     my_ps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; }    # my_ps:            List processes owned by my user
#
# #   ---------------------------
# #   4. NETWORKING
# #   ---------------------------
#
#     ii() {                                                                      # ii:               Display useful host related informaton
#         echo -e "\nYou are logged on ${RED}$HOST"
#         echo -e "\nAdditionnal information:$NC " ; uname -a
#         echo -e "\n${RED}Users logged on:$NC " ; w -h
#         echo -e "\n${RED}Current date :$NC " ; date
#         echo -e "\n${RED}Machine stats :$NC " ; uptime
#         echo -e "\n${RED}Current network location :$NC " ; scselect
#         echo -e "\n${RED}Public facing IP Address :$NC " ;myip
#         echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
#         echo
#     }
#
# #   ---------------------------------------
# #   5. WEB DEVELOPMENT
# #   ---------------------------------------
#
#     httpHeaders () { /usr/bin/curl -I -L $@ ; }                                 # httpHeaders:      Grabs headers from web page
#
#                                                                                 # httpDebug:        Download a web page and show info on what took time
#     httpDebug () { /usr/bin/curl $@ -o /dev/null -w "dns: %{time_namelookup} connect: %{time_connect} pretransfer: %{time_pretransfer} starttransfer: %{time_starttransfer} total: %{time_total}\n" ; }
