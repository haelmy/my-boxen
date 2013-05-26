# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

def haelmy(name, version)
  mod name, version, :github_tarball => "haelmy/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "2.1.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.2.2"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.4.0"
github "nodejs",     "2.2.0"
github "repository", "2.0.2"
github "ruby",       "4.1.0"
github "stdlib",     "4.0.2", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "property_list_key", "0.1.0"
github "osx", "1.3.0"
github "chrome", "1.1.0"
github "iterm2", "1.0.2"
github "textmate", "1.1.0"
github "colloquy", "1.0.0"
github "keepassx", "1.0.0"
github "zsh", "1.0.0"
github "java", "1.1.0"

haelmy "alfred", "1.0.3"
haelmy "ohmyzsh", "0.0.1"
haelmy "wuala", "0.0.1"
haelmy "openoffice", "1.1.0"

