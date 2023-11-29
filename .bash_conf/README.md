# IMPORTANT

It'd be wise to _**make a copy of your current .bash_profile, .bashrc or any other bash configuration file**_ that you may have in your HOME folder **before you clone this repo.**
If there are aliases or other stuff that you know you are definitely keep using, feel free to add them again after installation.
Make sure you placed these backup files somewhere else in your machine, so they won't be load or conflict with the ones you're about to replace them with.

# CONTRIBUTIONS

This is meant to be useful for sharing those console shortcuts and functions that make our daily work a litte bit smoother :)
Those of you who, like me, are still a bit intimidated by bash programming, may find this as a good start to learn some basic stuff.
And to those of you who are more experienced in this matters, we would be very grateful if you can contribute with your knowledge so that this ends up being something way better than it is now.
Be careful, as you would be with other repos, when forking and making contributions.
Before making a PR, think if what you are adding it's generic enough to be useful to everybody and write descriptions when it's needed.

# HOW TO USE

Once you've taken care of the steps mentioned above:

* Download this file https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
  to this path /usr/local/etc/bash_completion.d/git-completion.bash

* Clone this repo into your home directory
  `git clone `

* Overwrite PATHS in .bash_profile & .bash_taiger should you have different ones in your machine

* Make an alias of .bash_profile:
  In your home directory, create an alias of .bash_profile that points to the one inside .bash_conf folder
  `ln -s ~/.bash_conf/.bash_profile .bash_profile`

# .BASH_PROFILE & .BASHRC

'.bashrc' and '.bash_profile' would be the entrypoint files of the whole configuration.
Ideally, you will leave '.bashrc' alone and start tweaking things from '.bash_profile'.
As an entrypoint, you should use this file to load (in an orderly fashion) the rest of the files that would hold different aspects of your configuration.
But, if you don't have a lot of application paths, you may declare those here too.

# .BASH_PROMPT

Thanks to the *git-completion.bash* we downloaded before, we are now able to display git branch info in our prompt.
With the current code in .bash_prompt, your prompt should look something like this (maybe in different hues, depending on your iTerm configuration):

<place image here>

This would be a result of this line:

`PS1="$__user_and_host $__cur_location$__git_branch_color$__git_branch $__prompt_tail$__user_input_color "`

So, if you want to customize it, all you need to do is tweak the variables order, colors, and other options available.

# .BASH_ALIASES

  Some useful aliases for file system navigation, docker, git and other stuff

# .BASH_FUNCTIONS

  Some useful functions for file system navigation, docker, git and other stuff

# .BASH_ITERM

### Functions

| function     | args            | description                                          |
|--------------|-----------------|------------------------------------------------------|
| tab 		   | <profile_name>  | open a new tab with a specific profile               |
| split_tab    | <profile_name>  | split current tab with a specific profile            |

# .BASH_TAIGER

### IMPORTANT
**Do not rely 100% on the aliases and functions in this file.**
They are intended to work only for a very basic local setup of iMatch and is very susceptible to changes, since iMatch configuration is constantly updated.

### Module names

* registry
* gateway
* pipeline
* annotator
* license
* importer
* ocr
* resmanager
* consolidation
* metrics
* publisher
* classifier
* normalization
* search
* dtransformer
* ui
* poderes

### Aliases

| alias               | description                                          |
|---------------------|------------------------------------------------------|
| build:imatch:images | go to 'builders' folder & run build_docker_images.sh |
| d:up                | go to 'dev' folder & run `docker-compose up`         |
| d:stop              | go to 'dev' folder & run `docker-compose stop`       |
| d:down              | go to 'dev' folder & run `docker-compose down`       |

### Functions

| function     | args             | description                                                                                  |
|--------------|------------------|----------------------------------------------------------------------------------------------|
| list:modules |                  | display list of iMatch modules names                                                         |
| to           | <module_name>    | navigate to module folder                                                                    |
| comp         | <module_name>    | compile and build docker image by module name                                                |
| comp         | all              | runs `comp` in all modules                                                                   |
| dc:stop      | <module_name>    | stop docker container through docker compose                                                 |
| dc:stop      | <module_name> -f | stop docker container through docker compose and remove docker container and image of module |
| dc:up        | <module_name>    | run docker container through docker compose                                                  |
| d:rm         | <module_name>    | remove (forced) docker container by module name                                              |
| d:rm         | <module_name> -f | remove (forced) docker container by module name and remove module docker image as well       |
| d:rm         | all              | runs `d:rm` in all modules                                                                   |
| d:rmi        | <module_name>    | remove (forced) docker image by module name                                                  |
| d:rmi        | all              | runs `d:rm` in all modules                                                                   |
| d:logs       | <module_name>    | attach to docker container log stream by module name                                         |
| d:db         | <module_name>    | logs into docker mysql console of given module                                               |
| jira         | <id>             | open a jira issue web page by identifier                                                     |
