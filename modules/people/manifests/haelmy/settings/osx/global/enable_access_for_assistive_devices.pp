class people::haelmy::settings::osx::global::enable_access_for_assistive_devices {
  file { "/private/var/db/.AccessibilityAPIEnabled":
    ensure => present,
    content => ""
  }
}