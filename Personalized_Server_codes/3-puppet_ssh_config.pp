# Script in Puppet to make changes to our configuration file.


$conf = "
Include /etc/ssh/ssh_config.d/*.conf

HOST *
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
"



file {'config':
  ensure   => file,
  content  => $conf,
  checksum => 'md5',
  path     => '/etc/ssh/ssh_config',
}
