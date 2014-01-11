class base {
  package {
    'git-core':                  ensure => 'installed';
    'build-essential':           ensure => 'installed';
    'libssl-dev':                ensure => 'installed';
    'libcrypt-openssl-rsa-perl': ensure => 'installed';
    'libao-dev' :                ensure => 'installed';
    'libio-socket-inet6-perl':   ensure => 'installed';
    'libmodule-build-perl':      ensure => 'installed';
    'libwww-perl':               ensure => 'installed';
    'avahi-utils':               ensure => 'installed';
    'pkg-config':                ensure => 'installed';
    'libavahi-client-dev':       ensure => 'installed';
    'libasound2-dev':            ensure => 'installed';
  }
}

class shairport {
  vcsrepo { "/home/pi/shairport":
    ensure   => latest,
    provider => git,
    source   => 'git://github.com/abrasive/shairport.git',
    revision => master
  }

  exec { "./configure && make && make install":
    cwd     => '/home/pi/shairport',
    path    => '/usr/bin:/usr/sbin/:/bin:/sbin:/home/pi/shairport',
    alias   => 'install-shairport',
    require => Vcsrepo['/home/pi/shairport']
  }
}