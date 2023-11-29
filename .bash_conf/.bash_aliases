#!/bin/bash
#   ---------------------------
# 	FILE SYSTEM
#   ---------------------------

	# Full Recursive Directory Listing
	alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

	alias c='clear'																			# Clears console
	alias ls='c && ll'
	alias log='c && git log --oneline --decorate --all --graph'
	alias cp='cp -iv'
	alias mv='mv -iv'
	alias ll='ls -FGlAhp'
	alias less='less -FSRXc'                    																	# Preferred 'less' implementation

	alias cd..='cd ../'                         																	# Go back 1 directory level (for fast typers)
	alias ..='cd ../'                           																	# Go back 1 directory level
	alias ..2='cd ../../'                       																	# Go back 2 directory levels
	alias ..3='cd ../../../'                     																	# Go back 3 directory levels
	alias ..4='cd ../../../../'                  																	# Go back 4 directory levels
	alias ..5='cd ../../../../../'               																	# Go back 5 directory levels
	alias ..6='cd ../../../../../../'            																	# Go back 6 directory levels
	alias f='open -a Finder ./'                 																	# Opens current directory in MacOS Finder
	alias ~='cd ~'
	alias downloads='cd ~/Downloads'                               																	# Go Home
	alias documents='cd ~/Documents'
	alias which='type -all'                     																	# Find executables
	alias path='echo -e ${PATH//:/\\n}'         																	# Echo all executable Paths

#   ---------------------------
#   VIM - TMUX
#   ---------------------------

  alias vim='nvim'
  alias tmux-kill='tmux kill-server'

#   ---------------------------
#   DOCKER
#   ---------------------------

	alias di='docker images'																											# list images
	alias dps='docker ps'																													# list running containers
	alias dpsa='docker ps -a'																											# list all containers
	alias drm='docker rm'																													# remove container
	alias drm:all='docker rm $(docker ps -a -q) -f' 															# remove all containers
	alias drmi='docker rmi'																												# remove image
	alias drmi:all='docker rmi $(docker images -q) -f' 														# remove all images
	alias drmi:none='docker rmi $(docker images | grep "^<none>" | awk "{print $3}") -f'  # remove all untagged images
	alias dstop='docker stop'																															# stop container
	alias drun='docker run'																																# run container
	alias dcr='docker create'																															# create container
	alias dkill='docker kill'																															# kill container
	alias dpush='docker push'																															# push image
	alias dtag='docker tag'

#   ---------------------------
#   GIT
#   ---------------------------

	alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'
	
    alias git-clean-branches='git checkout master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

#   ---------------------------
#   GNU
#   ---------------------------

    alias xargs="gxargs"
    alias sed="gsed"


