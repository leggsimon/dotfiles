export PATH="$PATH:node_modules/.bin"

export PATH=/Users/simon.legg/.gem/ruby/2.0.0/bin:$PATH

export ANDROID_HOME=/usr/local/opt/android-sdk

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

source ~/.profile

###################
# Command aliases #
###################

alias gc="git commit -m"
alias ga="git add ."
alias gs='git status'
alias gr='git reset HEAD'
alias gp='git push'
alias go='git checkout'

alias ..='cd ..'
alias ...='cd ../..'

alias ls='ls -G'
alias ll='ls -lhg -G'
alias la='ls -G'


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

#########################
# Terminal Text colours #
#########################

Black='\e[0;30m'  # Black
BBlack='\e[1;30m' # Bold Black
BGreen='\e[1;32m' # Bold Green
Red='\e[0;31m'   # Bold Red

export PS1="\[$Red\][\$(date +%H:%M)]\[$BBlack\][\W]\[$BGreen\]\$(parse_git_branch)\[$Black\] $ "


export NVM_DIR="/Users/simon.legg/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
