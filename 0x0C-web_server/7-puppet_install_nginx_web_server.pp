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

# add redirection and error page
exec { 'Nginx default config file':
  path      => '/var/www/nginx/html/index.html',
  ensure    => file,
  path      => '/etc/nginx/sites-enabled/default',
  content   => "server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root   /var/www/nginx/html;
        index  index.html index.htm;
        # Add all the prefixes .php, . com .tech
        index index.html index.htm index.nginx-debian.html;
        
        if (\$request_filename ~ redirect_me){
            rewrite ^ https://www.youtube.com/watch?v=RgtNZGA6NYQ/;
        }
        
        # When user tries url/404 or url/unexisitng page, it displays 404.html page
        server_name _;
        error_page 404 /404.html;
        location  /404.html {
            internal;
        }
        location / {
                try_files \$uri \$uri/ =404;
        }

   }",
}


# restart nginx
exec {'run':
  command  => 'sudo service nginx restart',
  provider => shell,
}
