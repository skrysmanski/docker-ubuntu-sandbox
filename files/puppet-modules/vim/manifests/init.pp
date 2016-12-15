class vim {
  package { 'vim':
    ensure => 'installed',
  }

  file { "/etc/vim/vimrc.local":
    ensure => file,
    content => file('vim/vimrc.local'),
    owner => 'root',
    group => 'root',
    mode => '0644',
  }
}
