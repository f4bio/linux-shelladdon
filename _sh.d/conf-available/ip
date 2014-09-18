#######
## alias updates
#
ip2country() {
	curl -s -S --max-time 20 ipinfo.io/"$1" | jshon -e "country" -u ; echo
}
my-public-ip() {
	curl -s -S --max-time 20 http://ipecho.net/plain ; echo
}
alias my-ip-location="geoiplookup"
