class people::haelmy::settings::osx::global::unbind_fn_keys {
  include osx::notifications
  
  boxen::osx_defaults { 'unbind_fn_keys':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.keyboard.fnState',
    type   => 'bool',
    value  => 'true',
    user   => $::boxen_user,
    notify => Notify['requires login']
  }
  
  
}