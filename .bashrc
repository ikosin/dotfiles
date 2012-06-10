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

#履歴を重複させない
export HISTCONTROL=ignoreboth

#Flex4
export PATH="${PATH}:/Developer/SDKs/flex_sdk_4/bin"

#プロンプトに色付け
PS1="\h:\[\e[1;36m\]\w\[\e[00m\] \u\$ "

