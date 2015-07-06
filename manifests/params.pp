# == Class firefox::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class firefox::params {

  case $::osfamily {
    'Debian': {
      $package_name = ""
    }
    'RedHat', 'Amazon': {
      $package_name = ''
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
