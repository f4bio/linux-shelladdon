#######
## environment
#
rubyDir=$(ruby -rubygems -e "puts Gem.user_dir")
if [ -d $RUBY_GEMS_HOME ]; then
	export RUBY_GEMS_HOME=$rubyDir
fi

#######
## path
#
if [ -d $RUBY_GEMS_HOME/bin ]; then
	export PATH=$PATH:$RUBY_GEMS_HOME/bin
fi

#######
## alias
#
