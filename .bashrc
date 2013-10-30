alias flushcache="dscacheutil -flushcache"

export BUNDLER_EDITOR=subl

#ruby garbage collection hacks
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000

if [[ -s /Users/joshbavari/.rvm/scripts/rvm ]] ; then source /Users/joshbavari/.rvm/scripts/rvm ; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
BLUE="\[\033[1;34m\]"
CYAN="\[\033[0;36m\]"
PURPLE="\[\033[0;35m\]"
NO_COLOUR="\[\033[0m\]"

function set_rvm_prompt {
  local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
  [ "$gemset" != "" ] && echo "(@$gemset) "
}
 
function parse_git_branch () {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
}
 
function set_git_branch {
  # Capture the output of the "git status" command.
 	# echo "We are doing set_git_branch"
    git_status="$(git status 2> /dev/null)"
    # Set color based on clean/staged/dirty.
    if [[ ${git_status} =~ "working directory clean" ]]; then
        B_STATE="${BLUE}"
    elif [[ ${git_status} =~ "Changes to be committed" ]] || [[ ${git_status} =~ "Changes not staged for commit" ]]; then
        B_STATE="${YELLOW}"
    else
        B_STATE="${RED}"
    fi
}

function show_status_color {
    git_status="$(git status 2> /dev/null)"
    # Set color based on clean/staged/dirty.
    if [[ ${git_status} =~ "working directory clean" ]]; then
        echo -e "${BLUE}";
    elif [[ ${git_status} =~ "Changes to be committed" ]] || [[ ${git_status} =~ "Changes not staged for commit" ]]; then
        echo -e "${YELLOW}";
    else
        echo -e "${RED}";
    fi
}

function last_command_success (){
	if [ \$? = 0 ]; then 
		echo -e '\[\e[01;32m\]:)'; 
	else 
		echo -e '\[\e[01;31m\]:('; 
	fi
}
 
set_git_branch

# Robs original
# PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"


PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W\$(show_status_color)\$(parse_git_branch) \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"

# \`if [ \$? = 0 ]; then set_git_branch else set_git_branch fi\`
# PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W\$(show_status_color)\$(parse_git_branch)$NO_COLOUR \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"
# PS1="\` set_git_branch \` \[\e[01;32m\]\u@\h \[\e[01;34m\]\W$B_STATE$(parse_git_branch)$NO_COLOUR \`if [ \$? = 0 ]; then echo -e 'HELP'; else echo -e 'no'; fi\` \[\e[01;34m\]$\[\e[00m\]"
# PS1="$(set_git_branch)\[\e[01;32m\]\u@\h \[\e[01;34m\]\W$B_STATE$(parse_git_branch)$NO_COLOUR $(last_command_success) \[\e[01;34m\]$\[\e[00m\]"

# PS1="${PYTHON_VIRTUALENV}$PURPLE\$(set_rvm_prompt)$NO_COLOUR\u@\h:[\W]${B_STATE}\$(parse_git_branch)$NO_COLOUR\$ "