#!/bin/sh

function gen-nginx-cert {
  currentDir=$(pwd)
  baseDir=/etc/nginx/ssl/
  domain=$1
  
  sudo mkdir -p "$baseDir"

  if [ -n "$domain" ]; then
      sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -keyout /etc/nginx/ssl/$domain.key \
        -out /etc/nginx/ssl/$domain.crt
      echo "cert & key generated successfully!"
  else
      echo "usage: gen-nginx-cert [domain]"
      return 1
  fi
}
