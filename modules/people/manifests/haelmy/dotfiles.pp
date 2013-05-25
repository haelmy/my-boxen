class people::haelmy::dotfiles {
  $home = "/Users/${::boxen_user}"
  $dotfiles_dir = "${boxen::config::srcdir}/dotfiles"
  
  repository { $dotfiles_dir:
    source => "${::github_login}/dotfiles"
  }

  file { "${home}/.gitconfig":
    ensure  => link,
    target  => "${dotfiles_dir}/.gitconfig",
    require => Repository[$dotfiles_dir] 
  }
}
