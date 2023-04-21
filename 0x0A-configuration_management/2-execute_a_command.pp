# Using Puppet, create a manifest that kills a process named killmenow.

exec {'Execute a command':
  command  => 'pkill -f killmenow',
  path    => ['/usr/bin', '/bin'],
  onlyif  => 'pgrep -f killmenow',
}
