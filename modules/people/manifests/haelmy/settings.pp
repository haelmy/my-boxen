class people::haelmy::settings {
  include osx::dock::clear_dock
  include osx::finder::unhide_library
  include osx::global::deactivate_natural_mouse_scrolling

  include alfred::hotkey
}