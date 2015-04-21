#######
## 
#
#publicip() {
	ipechoService=("http://ipecho.ft11.de/?raw" "http://ifconfig.me/ip")
	for service in $ipechoService; do
		curl --max-time 10 $service
		if [[ $? == 0 ]]; then break; fi
	done
#}

