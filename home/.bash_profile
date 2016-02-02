export PATH="$PATH:node_modules/.bin"
export PATH="$PATH:usr/local/sbin"
export PATH="$(brew --prefix homebrew/php/php56)/bin:$PATH"

export PATH=/Users/simon.legg/.gem/ruby/2.0.0/bin:$PATH

export ANDROID_HOME=/usr/local/opt/android-sdk

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export NVM_DIR="/Users/simon.legg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source ~/.profile

###################
# Command aliases #
###################

alias g="git"
alias gc="git commit -m"
alias gs='git status'
alias gr='git reset HEAD'
alias gp='git push'
alias go='git checkout'

alias ..='cd ..'
alias ...='cd ../..'

alias ls='ls -G'
alias ll='ls -lhg -G'
alias la='ls -laG'

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias tree="tree -I 'node_modules|bower_components'"

################################
# Git commands auto-completion #
################################

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

########################
# Git Branch in prompt #
########################

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

####################################
# Working Directory Path (3 chars) #
####################################

prompt_pwd() {
    local pwd=$(echo $PWD | sed "s:${HOME}:~:")
    echo -n $1
    while read -rd/; do echo -n ${REPLY::3}/; done <<< "$pwd";
    echo -e "${pwd##*/}"
}

#########################
# Terminal Text colours #
#########################

Red='\e[0;31m'     # Bold Red
BGreen='\e[1;32m'  # Bold Green
BYellow='\e[1;33m' # Bold Yellow
Color_Off='\e[0m'  # Default Color

###############
# Bash Prompt #
###############


PS1="\[$Red\][\$(date +%H:%M)] "; # Time
PS1+="\[$BYellow\]\$(prompt_pwd)"; # Current working directory shortened to 3 letters
PS1+="\[$BGreen\]\$(parse_git_branch)"; # Current Git branch
PS1+="\[$Color_Off\] $ ";
export PS1;
