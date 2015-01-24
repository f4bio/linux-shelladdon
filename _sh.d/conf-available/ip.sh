#######
## 
#
my-public-ip() {
	ipechoService=("ifconfig.me" "ipecho.net/plain")
	for service in $ipechoService; do
		curl --max-time 10 $service
		if [[ $? == 0 ]]; then break; fi
	done
}

