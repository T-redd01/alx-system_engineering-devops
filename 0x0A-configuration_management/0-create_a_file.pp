# ensuring file exists

file { '/tmp/school':
  ensure => file,
  owner  => 'www-data',
  group  => 'www-data',
  mode   => '0744',
  cotent => 'I love Puppet',
}
