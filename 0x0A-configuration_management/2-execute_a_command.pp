# Using Puppet, create a manifest that kills a process named killmenow.

exec {'Execute a command'
  command  => 'killnow',
  command  => 'pkill killnow',
}
