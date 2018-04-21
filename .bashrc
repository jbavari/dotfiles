source ~/.bash_aliases
source ~/.bash_colors

source ~/.git-prompt.sh
source ~/.git-completion.bash

# Enable emscripten utils
#source /home/jbavari/Development/emsdk/emsdk_env.sh

# For RVM
source /etc/profile.d/rvm.sh

# Enable default Elixir
#/home/jbavari/.kiex/bin/kiex use 1.3.1
#source $HOME/.kiex/elixirs/elixir-1.3.1.env
source $HOME/.kiex/elixirs/elixir-1.4.5.env

# Enable Erlang 18.3.
#source ~/18.3/activate
source ~/19.3/activate

# Disable Inertial scroll
synclient CoastingSpeed=0


# For CUDA
export PATH=/usr/local/cuda-8.0/bin${PATH:+:${PATH}}
export LD_LIBRARY_PATH=/usr/local/cuda-8.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

export PATH=/usr/local/bin:$PATH

# Add in the npm packages folder - have it point to bin
export NPM_GLOBAL_PACKAGES=$HOME/.npm-packages/bin
export PATH=$NPM_GLOBAL_PACKAGES:$PATH

test -s "$HOME/.kiex/scripts/kiex" && source "$HOME/.kiex/scripts/kiex"
source /home/jbavari/.evm/scripts/evm

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"
Hostname="\h"
Username="\u"

# export PS1="$White$Time12h$BYellow \w $(__git_ps1 '(%s)')$Color_Off \$"
# export PS1="$White$Time12h $BYellow\w \$(__git_ps1 '(%s)') \$ "
# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

# export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
export PS1=$White$Time12h$IGreen' '$Username' '$IBlue@$BGreen' '$Hostname' '$Yellow$PathShort'$(git branch &>/dev/null;\
if [ $? -eq 0 ]; then \
  echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
  if [ "$?" -eq "0" ]; then \
    # @4 - Clean repository - nothing to commit
    echo "'$Green'"$(__git_ps1 " (%s)"); \
  else \
    # @5 - Changes to working tree
    echo "'$IRed'"$(__git_ps1 " {%s}"); \
  fi) '$Color_Off'"; \
else \
  # @2 - Prompt when not in GIT repo
  echo " '$Color_Off'"; \
fi)▶ \$ '
