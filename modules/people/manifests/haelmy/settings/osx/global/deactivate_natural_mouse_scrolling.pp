class people::haelmy::settings::osx::global::deactivate_natural_mouse_scrolling {
  include osx::notifications

  boxen::osx_defaults { 'deactivate_natural_mouse_scrolling':
    domain => 'NSGlobalDomain',
    key    => 'com.apple.swipescrolldirection',
    type   => 'bool',
    value  => 'false',
    user   => $::boxen_user,
    notify => Notify['requires login']
  }
}