name             'base'
maintainer       'Pablo Gutiérrez del Castillo'
maintainer_email 'pablogutierrezdelc@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures base'
long_description 'Installs/Configures base'
version          '0.1.0'

supports         'ubuntu'

recipe           'base::default', 'Installs basic packages, configures the timezone and sudo'
recipe           'base::openssh', 'Installs and configures openssh'
recipe           'base::monit',   'Installs and configures monit'

%w(
  apt
  build-essential
  monit-ng
  openssh
  sudo
  timezone-ii
).each do |cb|
  depends cb
end
