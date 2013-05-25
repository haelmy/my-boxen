class people::haelmy::settings::osx::global::deactivate_natural_mouse_scrolling {
  boxen::osx_defaults { 'disable_natural_scrolling':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'bool',
    value  => 'false',
    user   => $::boxen_user
  }
}