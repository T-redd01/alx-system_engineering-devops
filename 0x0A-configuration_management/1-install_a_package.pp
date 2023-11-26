# installing package with pip3

package { 'flask':
  ensure   => '2.1.0',
  path     => ['/usr/bin/'],
  provider => pip3,
  name     => 'flask',
}
