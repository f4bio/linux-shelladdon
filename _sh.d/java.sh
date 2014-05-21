#######
## java environment
#
if [ -d /opt/java ]; then
	export JAVA8_HOME=/opt/java
fi
if [ -d /opt/java6 ]; then
	export JAVA6_HOME=/opt/java6
fi
if [ -d /opt/java7 ]; then
	export JAVA7_HOME=/opt/java7
fi

export JAVA_HOME="$JAVA6_HOME"
#export JAVA_HOME="$JAVA7_HOME"
#export JAVA_HOME="$JAVA8_HOME"

if [ -d "$JAVA_HOME"/jre ]; then
	export J2REDIR=/opt/java/jre
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
