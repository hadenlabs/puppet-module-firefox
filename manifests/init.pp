# == Class: firefox
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class firefox (
  $package = $::firefox::params::package_name,
) inherits ::firefox::params {

  # validate parameters here

  class { '::firefox::install': } ->
    Class['::firefox']
}
