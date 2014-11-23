#
# Cookbook Name:: base
# Attributes:: openssh
#
# Copyright (C) 2014 Pablo Gutiérrez del Castillo
#

# Timezone configuration
default['tz'] = 'Etc/UTC'

# sudo configuration
default['authorization']['sudo']['groups'] = ['sudo']
default['authorization']['sudo']['passwordless'] = true
default['authorization']['sudo']['include_sudoers_d'] = true
default['authorization']['sudo']['sudoers_defaults'] = [
  'env_reset',
  'secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"'
]
