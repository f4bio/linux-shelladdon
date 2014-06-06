#######
## alias updates
#
md5file() {
	if [[ $# == 0 ]] || [[ $# > 2 ]] || [[ ! -f "$1" ]]; then
		echo "usage: md5file [path to file] [given md5sum]"
		read && return
	fi
	tmp="$pwd" && cd "$(dirname $1)"

	file=$(basename "$1")
	checksum=($(md5sum "$1" > /dev/null))

	if [[ $# == 1 ]]; then
		echo "$checksum[1]" "$file" | tee "$1".md5

	elif [[ $# == 2 ]] && [[ ! -f "$2" ]]; then
		echo "$2  $file" | tee "$1".md5
		
	fi
	
	md5sum -c "$file".md5
	cd "$tmp"
}