#######
## start/stop command
#	* group should be "rtorrent" (add users e.g.: "www-data" to group)
#
rtor() {
	if [[ $1 == "start" ]]; then
		sudo chown -R :rtorrent /data/rtorrent
		sudo chmod -R g=rwx /data/rtorrent

		screen -d -m -S rtorrent rtorrent

	elif [[ $1 == "stop" ]]; then
		screen -S rtorrent -X eval 'stuff \021'

	else
		echo "usage: rtor [start|stop]"
		read && return
	fi
}