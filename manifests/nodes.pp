node 'raspberrypi' {
  include base
  include shairport

  # Start shairport automatically at boot
  file { "/etc/init.d/shairport.sh":
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    source  => 'puppet:///modules/pi/shairport.sh',
    mode    => 755,
    require => Exec['install-shairport']
  }

  exec { "update-rc.d shairport.sh defaults":
    require => File["/etc/init.d/shairport.sh"]
  }
}