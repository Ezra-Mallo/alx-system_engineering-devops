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

# create index file
file { '/var/www/nginx/index.html':
  ensure    => file,
  path      => '/var/www/nginx/html/index.html',
  content   => 'Hello World!',
  mode      => '0644',
}

# create /404 file
file { '/var/www/nginx/404.html':
  ensure    => file,
  path      => '/etc/nginx/html/';
  content   => "Ceci n'est pas une page\n",
  mode      => '0644',
}

# assign value to the variable server_block 
server_block = "server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root   /var/www/nginx/html;        
        index index.html index.htm index.nginx-debian.html;
        
        server_name _;
        location / {
                try_files \$uri \$uri/ =404;
        }        
        error_page 404 /404.html;
        location  /404.html {
            internal;
        }

        if (\$request_filename ~ redirect_me){
            rewrite ^ https://www.youtube.com/watch?v=RgtNZGA6NYQ permanent;
        }
}
"
echo "$server_block" > /etc/nginx/sites-available/default

# restart nginx
exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
