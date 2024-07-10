# configure client SSH configuration file using puppet

file_line { 'private key':
  ensure => 'present',
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
}

file_line { 'turn off authentification file':
  ensure => 'present',
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
}
