# Using Puppet, install flask from pip3.

file{'Install flask':
  ensure  => 'version 2.1.0',
  install => 'flask',
}
