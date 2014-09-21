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
#サーバー起動
alias simpleHTTPServer='python -m SimpleHTTPServer 8000'

#履歴を重複させない
export HISTCONTROL=ignoreboth
# 保存する履歴の数を増やす
export HISTFILESIZE=50000

#Flex4
export PATH="${PATH}:/Developer/SDKs/flex_sdk_4/bin"

#プロンプトに色付け
PS1="\h:\[\e[1;36m\]\w\[\e[00m\] \u\$ "

# for rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# for AWS
export JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export AWS_RDS_HOME=~/aws/RDSCli-1.14.001
export PATH=$PATH:$AWS_RDS_HOME/bin
export AWS_CREDENTIAL_FILE=~/aws/RDSCli-1.14.001/credential-file-path
export EC2_PRIVATE_KEY=~/.ssh/aws/VN.pem

# for Berkshelf
export PATH=$HOME/.chefdk/gem/ruby/2.1.0/bin:/opt/chefdk/bin:$PATH

# for Cpan
export PERL5LIB=$HOME/.cpan/build/

# for nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
