# configure client SSH configuration file using puppet

file_line { 'private key':
  ensure => 'present',
  path => '/root/.ssh/config',
  line => 'IdentityFile ~/.ssh/school',
}

file_line { 'turn off authentification file':
  ensure => 'present',
  path => '/root/.ssh/config',
  line => 'PasswordAuthentication no',
}
