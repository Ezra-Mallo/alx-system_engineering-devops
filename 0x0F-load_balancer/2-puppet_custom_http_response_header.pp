#!/usr/bin/env bash
# A script to install nginx web server and configure it to redirect_me
# to another page

sudo apt-get update
sudo apt-get install nginx -y
sudo mkdir -p /var/www/html
sudo chmod -R 755 /var/www
sudo touch /var/www/html/index.html

# Creating the index page & 404 page
echo "Hello World!" | sudo tee /var/www/html/index.html
echo -e "Ceci n'est pas une page \n" | sudo tee /var/www/html/404.html

# stream edit(sed), inline, at line 47 add comment to header in etc/nginx/site_available/default
sudo sed -i "47i\\\tadd_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default

# stream edit(sed) for the redirect in /etc/nginx/site-availalble
sudo sed -i "57i\\\tlocation /redirect_me {\n\t\treturn 301 https://www.youtube.com/watch?v=RgtNZGA6NYQ/;\n\t}" /etc/nginx/sites-available/default;


# stream edit(sed) 404 in /etc/nginx/site-avilable/default
error="\terror_page 404 /404.html;"
sudo sed -i "/server_name _;/a\ \n$error\n" /etc/nginx/sites-available/default
      root /var/www/html;

sudo service nginx restart

