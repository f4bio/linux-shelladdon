#######
## alias updates
#
ip2country() {
	curl -s -S --max-time 20 ipinfo.io/"$1" | jshon -e "country" -u
}
alias my-public-ip="curl -s -S --max-time 20 http://ipecho.net/plain"
alias my-ip-location="geoiplookup"
