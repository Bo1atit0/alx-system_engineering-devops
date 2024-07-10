# configure client SSH configuration file using puppet

file { '/root/.ssh/config':
  ensure  => file,
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
  content => @("EOF")
Host titoserver
    HostName 54.167.179.128
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
| EOF
}

