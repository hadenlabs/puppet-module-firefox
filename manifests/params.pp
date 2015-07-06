# == Class firefox::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class firefox::params {

  case $::osfamily {
    'Debian': {
      $package_name = "firefox"
    }
    'RedHat', 'Amazon': {
      $package_name = "firefox"
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
