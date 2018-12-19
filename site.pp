node 'default' {
  package { 'httpd':
    ensure  => 'installed',
  }
  service { 'httpd':
    ensure => running,
    enable => true
  }
}

node 'server1' {
  package { 'httpddddd':
    ensure  => 'installed',
  }
  service { 'httpd':
    ensure  => running,
    enable  => true,
    require => Package['httpd'],
  }
}
