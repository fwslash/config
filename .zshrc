# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ZSH config
ZSH_THEME="bira"
plugins=(git zsh-vi-mode)
source $ZSH/oh-my-zsh.sh

# aliases
alias vim="nvim"
if [[ -x "$(command -v java)" ]] && [[ -d /usr/libexec/java_home ]]; then
    alias j20="export JAVA_HOME=$(/usr/libexec/java_home -v 20); java -version"
    alias j19="export JAVA_HOME=$(/usr/libexec/java_home -v 19); java -version"
    alias j18="export JAVA_HOME=$(/usr/libexec/java_home -v 18); java -version"
    alias j17="export JAVA_HOME=$(/usr/libexec/java_home -v 17); java -version"
    alias j16="export JAVA_HOME=$(/usr/libexec/java_home -v 16); java -version"
    alias j15="export JAVA_HOME=$(/usr/libexec/java_home -v 15); java -version"
    alias j14="export JAVA_HOME=$(/usr/libexec/java_home -v 14); java -version"
    alias j13="export JAVA_HOME=$(/usr/libexec/java_home -v 13); java -version"
    alias j12="export JAVA_HOME=$(/usr/libexec/java_home -v 12); java -version"
    alias j11="export JAVA_HOME=$(/usr/libexec/java_home -v 11); java -version"
    alias j10="export JAVA_HOME=$(/usr/libexec/java_home -v 10); java -version"
    alias j9="export JAVA_HOME=$(/usr/libexec/java_home -v 9); java -version"
    alias j8="export JAVA_HOME=$(/usr/libexec/java_home -v 1.8); java -version"
    alias j7="export JAVA_HOME=$(/usr/libexec/java_home -v 1.7); java -version"
fi 

# GO
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin

# BREW
if [[ -x "$(command -v brew)" ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

bindkey -M viins '\e.' insert-last-word
