# == Class firefox::install
#
# This class is called from module for install.
#
class firefox::install {

  package { $::firefox::package_name:
    ensure => installed,
  }

}
