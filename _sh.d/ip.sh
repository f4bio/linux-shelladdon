#######
## alias updates
#
ip2country() {
	curl -s -S --max-time 20 ipinfo.io/"$1" | jshon -e "country" -u
}
alias pubip="curl -s -S --max-time 20 https://secure.informaction.com/ipecho/"
alias iploc="geoiplookup"
