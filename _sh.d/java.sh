#######
## java environment
#
if [ -d /usr/lib/jvm/default ]; then
	export JAVA_HOME=/usr/lib/jvm/default
fi

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
