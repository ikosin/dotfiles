# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# alias
alias ll='ls -lhnG'
alias la='ls -lhaG'
alias sl='ls -lhnG'
alias ..='cd ..'
alias vi='vim'
#うっかり防止
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
#Chromeで開く
alias Chrome='open -a /Applications/Google\ Chrome.app'
#iPhoneSimulator
alias iPhone='open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app'
#MacVimで開く
alias gvim='/Applications/MacVim.app/Contents/MacOS/Vim -g --remote-tab-silent'

#履歴を重複させない
export HISTCONTROL=ignoreboth

#Flex4
export PATH="${PATH}:/Developer/SDKs/flex_sdk_4/bin"

#プロンプトに色付け
PS1="\h:\[\e[1;36m\]\w\[\e[00m\] \u\$ "

