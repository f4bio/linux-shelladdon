#######
## appengine environment
#
if [ -d "$HOME"/.appengine-python ]; then
	export PATH="$PATH":"$HOME"/.appengine-python
fi
if [ -d "$HOME"/.appengine-java ]; then
	export PATH="$PATH":"$HOME"/.appengine-java
fi