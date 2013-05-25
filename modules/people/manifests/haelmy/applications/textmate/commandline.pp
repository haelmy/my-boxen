class people::haelmy::applications::textmate::commandline {
  file { ["/usr/local/", "/usr/local/bin"]:
    ensure => "directory"
  }

  file { "/usr/local/bin/mate":
    ensure  => link,
    target  => "/Applications/TextMate.app/Contents/Resources/mate",
    require => Package[TextMate]
  }
}