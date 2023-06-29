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

# create directory using shell
exec {'make dir':
  command  => 'sudo mkdir -p /var/www/nginx/html',
  provider => shell,
}

# create Index page file
exec {'Hello':
  command  => 'echo "Hello World!" | sudo tee /var/www/nginx/html/index.html',
  provider => shell,
}

# create 404 file
file { '/etc/nginx/html/404.html':
  content => "Ceci n'est pas une page\n",
}

exec {'sudo sed -i "s/listen 80 default_server;/listen 80 default_server;\\n\\tlocation \/redirect_me {\\n\\t\\treturn 301 https:\/\/blog.ehoneahobed.com\/;\\n\\t}/" /etc/nginx/sites-available/default':
  provider => shell,
}

exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
