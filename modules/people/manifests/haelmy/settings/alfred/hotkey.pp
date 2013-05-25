class people::haelmy::settings::alfred::hotkey {
  $preferences_dir = "/Users/${::boxen_user}/Library/Preferences"
  $alfred_preferences_list = "${$preferencesdir}/com.runningwithcrayons.Alfred-Preferences.plist"
  
  property_list_key { 'alfred_hotkey_key':
    ensure => present,
    path => $alfred_preferences_list,
    key => 'hotkey.default.key',
    value => 10,
    value_type => 'integer'
  }
  
  property_list_key { 'alfred_hotkey_mod':
    ensure => present,
    path => $alfred_preferences_list,
    key => 'hotkey.default.mod',
    value => 1048576,
    value_type => 'integer'
  }
  
  property_list_key { 'alfred_hotkey_string':
    ensure => present,
    path => $alfred_preferences_list,
    key => 'hotkey.default.string',
    value => '-'
  }
  
}