# installing package with pip3

package { 'flask':
  ensure  => '2.1.0',
  command => 'pip3 install flask',
}
