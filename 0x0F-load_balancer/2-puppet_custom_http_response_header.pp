#!/usr/bin/env bash
# A script to install HAproxy web server and configure it to redirect_me

exec { 'HAproxy commands':
  command  => 'apt-get -y update;
  apt-get -y install nginx;
  sudo sed -i "/listen 80 default_server;/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
  service nginx restart',
  provider => shell,
}


