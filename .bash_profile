if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

if [ -f ~/perl5/perlbrew/etc/bashrc ] ; then
  source ~/perl5/perlbrew/etc/bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jun/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/jun/google-cloud-sdk/completion.bash.inc'
