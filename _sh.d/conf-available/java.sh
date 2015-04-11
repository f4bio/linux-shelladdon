#######
## java environment
#
if [ -d /usr/lib/jvm/default ]; then
	export JAVA_HOME=/usr/lib/jvm/default
fi

if [ -d /usr/lib/jvm/default-java ]; then
	export JAVA_HOME=/usr/lib/jvm/default-java
fi

if [ -d "$JAVA_HOME"/jre ]; then
	export JRE_HOME="$JAVA_HOME"/jre
fi

if [ -f "$JAVA_HOME"/bin/javac ]; then
	export JDK_HOME="$JAVA_HOME"
fi

if [ -d "$JAVA_HOME"/db ];then
	export DERBY_HOME="$JAVA_HOME"/db
fi

#######
## path updates
#
if [ -d "$JAVA_HOME"/bin ];then
	export PATH="$PATH":"$JAVA_HOME"/bin
fi
if [ -d "$JAVA_HOME"/db/bin  ]; then
	export PATH="$PATH:""$JAVA_HOME"/db/bin
fi
if [ -d "$JAVA_HOME"/jre/bin  ];then
	export PATH="$PATH":"$JAVA_HOME"/jre/bin
fi
