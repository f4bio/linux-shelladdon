#######
## alias updates
#
md5file() {
	if [[ $# == 0 ]] || [[ $# > 2 ]] || [[ ! -f "$1" ]]; then
		echo "usage: md5file [path to file] [given md5sum]"
		return
	fi

	if [[ $# == 1 ]]; then
		echo "$(md5sum $1)" | tee "$1".md5

	elif [[ $# == 2 ]] && [[ ! -f "$2" ]]; then
		echo "$2" "$(basename $1)" | tee "$1".md5
		
	fi
	
	md5sum -c "$1".md5
}

sha1file() {
	if [[ $# == 0 ]] || [[ $# > 2 ]] || [[ ! -f "$1" ]]; then
		echo "usage: sha1file [path to file] [given sha1sum]"
		return
	fi

	if [[ $# == 1 ]]; then
		echo "$(sha1sum $1)" | tee "$1".sha1

	elif [[ $# == 2 ]] && [[ ! -f "$2" ]]; then
		echo "$2" "$(basename $1)" | tee "$1".sha1
		
	fi
	
	sha1sum -c "$1".sha1
}