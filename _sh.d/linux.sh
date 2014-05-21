#######
## environment
#
[[ -d /usr/lib/pkgconfig ]] && export PKG_CONFIG_PATH=/usr/lib/pkgconfig
[[ -f $(which nano) ]] && export EDITOR=$(which nano)
[[ -f $(which chromium) ]] && export BROWSER=$(which chromium)
[[ -f $(which pwgen) ]] && export NEXTRND=$(pwgen)

[[ -d /usr/bin/core_perl ]] && export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl
[[ -d $PKG_CONFIG_PATH ]] && export PATH=$PATH:$PKG_CONFIG_PATH
[[ -d $HOME/bin ]] && export PATH=$PATH:$HOME/bin

export NOW=$(date +"%Y-%m-%d_%T")
setopt NO_HUP

#######
## alias
#
alias psa="ps aux | grep"
alias sn="sudo netstat -tulpen"
alias ll="ls -lh"
alias l="ls -lah"
