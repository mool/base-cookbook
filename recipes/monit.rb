#
# Cookbook Name:: base
# Recipe:: monit
#
# Copyright (C) 2014 Pablo Gutiérrez del Castillo
#

include_recipe 'monit-ng'

monit_check 'sshd' do
  check_id  '/var/run/sshd.pid'
  group     'system'
  start     '/usr/sbin/service ssh start'
  stop      '/usr/sbin/service ssh stop'
  tests [
    {
      'condition' => "failed port #{node.openssh.server.port} proto ssh for 3 cycles",
      'action'    => 'restart'
    },
    {
      'condition' => '3 restarts within 5 cycles',
      'action'    => 'alert'
    },
  ]
end

node['base']['monit']['fs'].each do |fs|
  monit_check fs.gsub(/\//, '_') do
    check_type 'filesystem'
    check_id   fs
    id_type    'path'
    group      'system'
    tests [
      {
        'condition' => 'space usage > 80% for 5 times within 15 cycles',
        'action'    => 'alert'
      },
      {
        'condition' => 'space usage > 95% for 5 times within 15 cycles',
        'action'    => 'alert'
      }
    ]
  end
end
