# == Class firefox::service
#
# This class is meant to be called from module.
# It ensure the service is running.
#
class firefox::service {

  service { $::firefox::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
