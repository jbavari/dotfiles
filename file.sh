#! /bin/bash

# __git_ps1="master"
. ~/.bash_colors

parse_git_branch() {
  # git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  git branch &>/dev/null
  echo "Resul: $?"
  # local "OK THERE"
  # is_git_branchs
}

get_git_bash_prompt() {
  # git status | grep "nothing to commit" > /dev/null 2>&1;
  git branch &>/dev/null;

  if [ "$?" -eq "0" ]; then
    # We're in a repository, need to set up git prompt
    # echo 'were in a repo.. should set up prompt'
    # local status=$(git status | grep "nothing to commit" > /dev/null 2>&1)
    git status | grep "nothing to commit" > /dev/null 2>&1
    if [ "$?" -eq "0" ]; then
      # echo 'we have clean repo, green color'
      # @4 - Clean repository - nothing to commit
      echo '$Green$($__git_ps1 " (%s)")$BYellow$PathShort$Color_Off'
    else
      # echo 'we have changes, red color'
      # @5 - Changes to working tree
      echo '$IRed$($__git_ps1 " {%s}")$BYellow$PathShort$Color_Off'
    fi #  ) '$BYellow$PathShort$Color_Off'\$ ";
  else
    # echo 'no repo, no color'
    echo "$BYellow$PathShort$Color_Off"
  fi
}


# NEW_PS=$(get_git_bash_prompt)
PROMPT=$(get_git_bash_prompt)
echo "PS1=$PROMPT"
