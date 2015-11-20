alias flushcache="dscacheutil -flushcache"
alias startredis="redis-server /usr/local/etc/redis.conf"
alias startmemcache="memcached -d"
alias tailpg="tail -f ~/Library/Application\ Support/Postgres93/var/pg_log/*"


# When using sublime text 3 - link this to easily open sublime via command line
#ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime


alias hu="heroku update && heroku plugins:update heroku-pg-extras"
alias springclean="brew cleanup --force -s && rvm cleanup all && gem cleanup"

export BUNDLER_EDITOR=subl

#ruby garbage collection hacks
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_FREE_MIN=500000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=100000000
export RUBY_GC_HEAP_INIT_SLOTS=1000000
export RUBY_GC_HEAP_OLDOBJECT_LIMIT_FACTOR=1.3

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend


#export ANDROID_HOME=/Applications/android-sdk-macosx
export ANDROID_HOME=~/adt-bundle-mac/sdk
export JAVA_HOME=`/usr/libexec/java_home`

export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export NDK=/Users/joshbavari/android-ndk-r9
export ANDROID_NDK=/Users/joshbavari/android-ndk-r9
export PATH=$NDK:$PATH

if [[ -s /Users/joshbavari/.rvm/scripts/rvm ]] ; then source /Users/joshbavari/.rvm/scripts/rvm ; fi
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# RED="\[\033[0;31m\]"
# YELLOW="\[\033[0;33m\]"
# GREEN="\[\033[0;32m\]"
# BLUE="\[\033[1;34m\]"
# CYAN="\[\033[0;36m\]"
# PURPLE="\[\033[0;35m\]"
# NO_COLOUR="\[\033[0m\]"

# function set_rvm_prompt {
#   local gemset=$(echo $GEM_HOME | awk -F'@' '{print $2}')
#   [ "$gemset" != "" ] && echo "(@$gemset) "
# }
 
# function parse_git_branch () {
#         git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/' 
# }
 
# function set_git_branch {
#   # Capture the output of the "git status" command.
#  	# echo "We are doing set_git_branch"
#     git_status="$(git status 2> /dev/null)"
#     # Set color based on clean/staged/dirty.
#     if [[ ${git_status} =~ "working directory clean" ]]; then
#         B_STATE="${BLUE}"
#     elif [[ ${git_status} =~ "Changes to be committed" ]] || [[ ${git_status} =~ "Changes not staged for commit" ]]; then
#         B_STATE="${YELLOW}"
#     else
#         B_STATE="${RED}"
#     fi
# }

# function show_status_color {
#     git_status="$(git status 2> /dev/null)"
#     # Set color based on clean/staged/dirty.
#     if [[ ${git_status} =~ "working directory clean" ]]; then
#         echo -e "${BLUE}";
#     elif [[ ${git_status} =~ "Changes to be committed" ]] || [[ ${git_status} =~ "Changes not staged for commit" ]]; then
#         echo -e "$YELLOW";
#     else
#         echo -e "${RED}";
#     fi
# }

# function last_command_success (){
# 	if [ \$? = 0 ]; then 
# 		echo -e '\[\e[01;32m\]:)'; 
# 	else 
# 		echo -e '\[\e[01;31m\]:('; 
# 	fi
# }
 
# set_git_branch

# Robs original
# PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"


# PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W\$(show_status_color)\$(parse_git_branch) \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"
# \`if [ \$? = 0 ]; then set_git_branch else set_git_branch fi\`
# PS1="\[\e[01;32m\]\u@\h \[\e[01;34m\]\W\$(show_status_color)\$(parse_git_branch)$NO_COLOUR \`if [ \$? = 0 ]; then echo -e '\[\e[01;32m\]:)'; else echo -e '\[\e[01;31m\]:('; fi\` \[\e[01;34m\]$\[\e[00m\]"
# PS1="\` set_git_branch \` \[\e[01;32m\]\u@\h \[\e[01;34m\]\W$B_STATE$(parse_git_branch)$NO_COLOUR \`if [ \$? = 0 ]; then echo -e 'HELP'; else echo -e 'no'; fi\` \[\e[01;34m\]$\[\e[00m\]"
# PS1="$(set_git_branch)\[\e[01;32m\]\u@\h \[\e[01;34m\]\W$B_STATE$(parse_git_branch)$NO_COLOUR $(last_command_success) \[\e[01;34m\]$\[\e[00m\]"

# PS1="${PYTHON_VIRTUALENV}$PURPLE\$(set_rvm_prompt)$NO_COLOUR\u@\h:[\W]${B_STATE}\$(parse_git_branch)$NO_COLOUR\$ "

#  Customize BASH PS1 prompt to show current GIT repository and branch.
#  by Mike Stewart - http://MediaDoneRight.com

#  SETUP CONSTANTS
#  Bunch-o-predefined colors.  Makes reading code easier than escape sequences.
#  I don't remember where I found this.  o_O

# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"


# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$BYellow$PathShort$Color_Off'\$ "; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Yellow$PathShort$Color_Off'\$ "; \
fi)'


