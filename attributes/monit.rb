#
# Cookbook Name:: base
# Attributes:: monit
#
# Copyright (C) 2014 Pablo Gutiérrez del Castillo
#

# disk partitions to monitor
default['base']['monit']['fs'] = []

# alerts subscribers
default['monit']['config']['subscribers'] = [
  {
    name:          'root@localhost',
    subscriptions: %w( connection exec icmp fsflags nonexist pid ppid resource status timeout )
  }
]

# mail system configuration
default['monit']['config']['mail_subject'] = '$HOST - $SERVICE $EVENT'
default['monit']['config']['mail_message'] = <<-EOT
  Monit $ACTION $SERVICE at $DATE on $HOST:
  $DESCRIPTION

  Yours sincerely,
  monit
EOT
default['monit']['config']['mail_servers'] = [
  {
    :hostname => 'localhost',
    :port => 25,
    :username => nil,
    :password => nil,
    :security => nil,
    :timeout => '30 seconds'
  }
]
