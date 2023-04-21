# Using Puppet, create a manifest that kills a process named killmenow.

exec {'testing killmenow':
  command  => 'killmenow',
}
