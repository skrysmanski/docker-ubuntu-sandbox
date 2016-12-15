class zsh {
  file { '/root/.oh-my-zsh/custom':
    ensure => 'directory',
    owner => 'root',
    group => 'root',
    mode => 'go-w',
    source => 'puppet:///modules/zsh/custom',
    recurse => true,
    purge => true,
    force => true,
  }

  file { '/root/.zshrc':
    ensure => 'file',
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => 'puppet:///modules/zsh/zshrc',
  }
}
