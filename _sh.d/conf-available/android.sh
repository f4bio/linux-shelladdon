#######
## environment
#
if [ -d "/opt/android-sdk" ]; then
	export ANDROID_HOME=/opt/android-sdk
fi
if [ -d "/opt/android-sdk-linux" ]; then
	export ANDROID_HOME=/opt/android-sdk-linux
fi
if [ -d "$HOME/.android-sdk-linux" ]; then
	export ANDROID_HOME=$HOME/.android-sdk-linux
fi
if [ -d "$HOME/.android-sdk" ]; then
	export ANDROID_HOME=$HOME/.android-sdk
fi
export USE_CCACHE=1

#######
## path
#
if [ -d "$ANDROID_HOME/tools" ]; then
	export PATH="$PATH:$ANDROID_HOME/tools"
	export ANDROID_SWT="$ANDROID_HOME/tools/lib/$(uname -m)"
fi

if [ -d "$ANDROID_HOME/platform-tools" ]; then
	export PATH="$PATH:$ANDROID_HOME/platform-tools"
fi

if [ -d "$ANDROID_HOME/build-tools" ]; then
	BUILDTOOLSVERSION=($(ls -vr "$ANDROID_HOME/build-tools"))
	if [ -d "$ANDROID_HOME/build-tools/${BUILDTOOLSVERSION[1]}" ]; then
		export PATH="$PATH:$ANDROID_HOME/build-tools/${BUILDTOOLSVERSION[1]}"
	fi
fi

#######
## alias
#
androidscreencap() {
	mkdir -p "$(pwd)/android-screencap"
	TMPIMAGE="$(date +"%Y-%m-%d_%H-%M-%S").png"
	adb shell screencap -p "/sdcard/$TMPIMAGE"
	adb pull "/sdcard/$TMPIMAGE" "$(pwd)/android-screencap" > /dev/null
	adb shell rm "/sdcard/$TMPIMAGE"
	echo "done! $(pwd)/android-screencap/$TMPIMAGE"
}
