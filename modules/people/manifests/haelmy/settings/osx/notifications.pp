class people::haelmy::settings::osx::notifications {
  
  notify { 'requires login':
    message => 'Some of the changes will only take effect after you logged out and in again.'
  }
  
}
  