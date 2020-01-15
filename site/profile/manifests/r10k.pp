class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/DebHarrington/control_repo',
  }
  class {'r10k::webhook::config':
    use_collective => false,
    enable_ssl     => false,
  }
  class {'r10k::webhook':
    user  => 'root',
    group => 'root',
  }
}
