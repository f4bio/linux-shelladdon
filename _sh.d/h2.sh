#######
## h2 environment
#
if [ -d "$HOME"/.h2 ]; then
	export H2_HOME="$HOME"/.h2
fi

#######
## path updates
#
if [ -d "$H2_HOME"/bin ];then
	export PATH="$PATH":"$H2_HOME"/bin
fi