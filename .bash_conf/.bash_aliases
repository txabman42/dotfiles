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
#   JAVA
#   ---------------------------
	alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
	alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version" # If command doesn't work, copy it directly in the terminal
	alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
	alias j14="export JAVA_HOME=`/usr/libexec/java_home -v 14`; java -version"
	alias j15="export JAVA_HOME=`/usr/libexec/java_home -v 15`; java -version"
	alias j16="export JAVA_HOME=`/usr/libexec/java_home -v 16`; java -version"

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

		alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
    alias git-clean-branches='git checkout master && git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

#   ---------------------------
#   MAVEN
#   ---------------------------

	alias m2="cd $HOME/.m2 && c"
	alias m2:repo="cd $HOME/.m2/repository && ls"

# #   ---------------------------
# #   SEARCHING
# #   ---------------------------

     alias qfind="find . -name "                                                 			# Quickly search for file

#   ---------------------------
#   MONGO
#   ---------------------------

 	alias run:mongodb="brew services start mongodb-community@4.4" 						# Starts MongoDB
 	alias stop:mongodb="brew services stop mongodb-community@4.4" 						# Stops MongoDB

#   ---------------------------
#   GNU
#   ---------------------------

    alias xargs="gxargs"
    alias sed="gsed"

#   ---------------------------
#   CABIFY
#   ---------------------------

    alias cabify="cd $HOME/Documents/dev/cabify"

# #   --------------------------------------
# #   SYSTEMS OPERATIONS & INFORMATIO
# #   --------------------------------------
#     alias mountReadWrite='/sbin/mount -uw /'    											# For use when booted into single-user
#     alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete"							# Recursively delete .DS_Store files
#
# #   cleanupLS:  Clean up LaunchServices to remove duplicates in the "Open With" menu
# #   -----------------------------------------------------------------------------------
#     alias cleanupLS="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"

# #   ---------------------------
# #   NETWORKING
# #   ---------------------------
#
#     alias myip='curl ip.appspot.com'                    												# Public facing IP Address
#     alias netCons='lsof -i'                             												# Show all open TCP/IP sockets
#     alias flushDNS='dscacheutil -flushcache'            												# Flush out the DNS Cache
#     alias lsock='sudo /usr/sbin/lsof -i -P'             												# Display open sockets
#     alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   												# Display only open UDP sockets
#     alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   												# Display only open TCP sockets
#     alias ipInfo0='ipconfig getpacket en0'              												# Get info on connections for en0
#     alias ipInfo1='ipconfig getpacket en1'              												# Get info on connections for en1
#     alias openPorts='sudo lsof -i | grep LISTEN'        												# All listening connections
#     alias showBlocked='sudo ipfw list'                  												# All ipfw rules inc/ blocked IPs

# #   ---------------------------
# #   PROCESS MANAGEMENT
# #   ---------------------------
#
#     alias memHogsTop='top -l 1 -o rsize | head -20'											# Find memory hogs
#     alias memHogsPs='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'				# Find memory hogs
#     alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'						# Find CPU hogs
#     alias topForever='top -l 9999999 -s 10 -o cpu'											# Continual 'top' listing (every 10 seconds)
#     alias ttop="top -R -F -s 10 -o rsize"													# Recommended 'top' invocation to minimize resources

# #   ---------------------------------------
# #   WEB DEVELOPMENT
# #   ---------------------------------------
#
# 	alias apacheEdit='sudo edit /etc/httpd/httpd.conf'      											# Edit httpd.conf
# 	alias apacheRestart='sudo apachectl graceful'           											# Restart Apache
# 	alias editHosts='sudo edit /etc/hosts'                  											# Edit /etc/hosts file
# 	alias herr='tail /var/log/httpd/error_log'              											# Tails HTTP error logs
# 	alias apacheLogs="less +F /var/log/apache2/error_log"   											# Shows apache error logs

# #   ---------------------------
# #   GIT
# #   ---------------------------
#
# 	alias gch='c && git checkout'
# 	alias br='c && git branch'
# 	alias gs='c && git status'
# 	alias gdiff='c && git diff'
# 	alias develop='git checkout develop && git pull'
																															# tag image
# #   ---------------------------
# #   ELASTICSEARCH
# #   ---------------------------
#
# 	alias run:elastic="brew services start elasticsearch"
#
# #   ---------------------------
# #   REDIS
# #   ---------------------------
#
# 	alias run:redis-server="sudo redis-server /usr/local/etc/redis.conf"					# Starts Redis

# #   ---------------------------
# #   RABBITMQ
# #   ---------------------------
#
# 	alias run:rabbit="sudo /usr/local/sbin/rabbitmq-server"									# Starts RabbitMQΩ
# 	alias stop:rabbit="sudo /usr/local/sbin/rabbitmqctl stop"								# Stops RabbitMQ
#
# #   ---------------------------
# #   JENKINS
# #   ---------------------------
#
# 	alias run:jenkins="sudo launchctl load /Library/LaunchDaemons/org.jenkins-ci.plist"		# Starts Jenkins
# 	alias stop:jenkins="sudo launchctl unload /Library/LaunchDaemons/org.jenkins-ci.plist"	# Stops Jenkins

# #   ---------------------------
# #	MYSQL
# #   ---------------------------
#
# 	alias run:mysql="brew services start mysql"																		# Starts MySQL
# 	alias stop:mysql="brew services stop mysql"																		# Stops MySQL

#   ---------------------------
#   AWS
#   ---------------------------

	# alias log:aws="`aws ecr get-login --no-include-mail`"

# #   ---------------------------
# #   JIRA AND GIT NODE MANAGER
# #   ---------------------------
#
# 	alias issues='cd $HOME/dev/jira-node-manager && npm run print:issues'
# 	alias issue:tr='cd $HOME/dev/jira-node-manager && npm run transition:issue'
# 	alias qas='cd $HOME/dev/jira-node-manager && npm run print:qas'
#
# #   ---------------------------
#
# #   ---------------------------
# #   OTHER
# #   ---------------------------
#
# 	alias reload='source $HOME/.bash_profile'																			# Reloads bash configuration
# 	alias bashconf='edit $BASH_CONF_PATH'																					# Open editor in bash configuration folder
# 	alias ij="open -a /Applications/IntelliJ\ IDEA\ 2016.3.1\ EAP.app/"   				# Opens IntelliJ
# 	alias annotatorNE="cd ~/Documents/dev/taiger/iMatch/imatch-annotator/src/main/resources/gate/applications/"
