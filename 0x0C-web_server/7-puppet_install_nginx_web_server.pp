# Script to install nginx using puppet

# confirms Nginx package exists
package {'nginx':
  ensure => 'present',
}

# updates ubuntu
exec {'update':
  command  => 'sudo apt-get update',
  provider => shell,
}

# install Nginx
exec {'install':
  command  => 'sudo apt-get install nginx -y',
  provider => shell,
}
# OR: command  => 'sudo apt-get update ; sudo apt-get -y install nginx',


# create Index page file
exec {'Hello':
  command  => 'echo "Hello World!" | sudo tee /var/www/nginx/html/index.html',
  provider => shell,
}

# create /404 file
exec {'Hello':
  command  => 'echo "Ceci n\'est pas une page\n" | sudo tee /etc/nginx/html/404.html',
  provider => shell,
}

exec {'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/blog.ehoneahobed.com\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
