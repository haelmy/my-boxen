class people::haelmy::settings::osx::global::do_not_reopen_windows_on_login {
  include osx::notifications

  boxen::osx_defaults { 'do_not_reopen_windows_on_login':
    domain => 'com.apple.loginwindow',
    key    => 'TALLogoutSavesState',
    type   => 'bool',
    value  => 'false',
    user   => $::boxen_user,
    notify => Notify['requires login']
  }
}