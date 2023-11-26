# killing a process

exec { 'killmenow':
  command => 'pkill -15 -f "killmenow"',
}
