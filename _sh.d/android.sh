#######
## environment
#
if [ -d /opt/android-sdk ]; then
	export ANDROID_HOME=/opt/android-sdk
fi
if [ -d "$HOME/.android-sdk-linux" ]; then
	export ANDROID_HOME="$HOME"/.android-sdk-linux
fi
if [ -d "$HOME/.android-sdk" ]; then
	export ANDROID_HOME="$HOME"/.android-sdk
fi

#######
## path
#
if [ -d "$ANDROID_HOME/tools" ];then
	export PATH="$PATH:$ANDROID_HOME/tools"
	export ANDROID_SWT="$ANDROID_HOME/tools/lib/$(uname -m)"
fi

if [ -d "$ANDROID_HOME/platform-tools" ]; then
	export PATH="$PATH:$ANDROID_HOME/platform-tools"
fi

if [ -d "$ANDROID_HOME/build-tools/19.1" ];then
	export PATH="$PATH:$ANDROID_HOME/build-tools/19.1"
fi

#######
## alias
#
andscreencap() {
	if [ -d "$HOME/Pictures" ]; then
		LOCALPATH="$HOME/Pictures/android-screencap"
	else
		LOCALPATH="$HOME/android-screencap"
	fi
	mkdir -p "$LOCALPATH"
	TMPIMAGE="$NOW.png"
	adb shell screencap -p "/sdcard/$TMPIMAGE"
	adb pull "/sdcard/$TMPIMAGE" "$LOCALPATH/$TMPIMAGE" > /dev/null
	adb shell rm "/sdcard/$TMPIMAGE"
	echo "done! $LOCALPATH/$TMPIMAGE"
}