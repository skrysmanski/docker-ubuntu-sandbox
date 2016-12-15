class zsh {
  package { 'zsh':
    ensure => 'installed',
  }

  file { '/etc/oh-my-zsh':
    ensure => directory,
    owner => 'root',
    group => 'root',
    # NOTE: The mode also applies to the files created.
    mode => 'go-w',
    source => 'puppet:///modules/zsh/oh-my-zsh',
    recurse => true,
    ignore => '.git*',
    # Delete unknown files.
    purge => true,
    force => true,
  }

  file { '/etc/oh-my-zsh/custom':
    ensure => 'directory',
    owner => 'root',
    group => 'root',
    mode => 'go-w',
    source => 'puppet:///modules/zsh/custom',
    recurse => true,
    purge => true,
    force => true,
  }

  file { '/etc/oh-my-zsh/zshrc':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => 'puppet:///modules/zsh/zshrc',
  }

  file { '/root/.zshrc':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0644',
    content => 'source /etc/oh-my-zsh/zshrc',
  }
}
