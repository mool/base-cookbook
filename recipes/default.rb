#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2014 Pablo Gutiérrez del Castillo
#

# Update apt sources
include_recipe 'apt'

# Timezone config
include_recipe 'timezone-ii'

# sudo config
include_recipe 'sudo'

# Installs basics packages for all servers
%w(
  dstat
  htop
  iftop
  iotop
  iptraf
  links
  mc
  ntpdate
  python-software-properties
  screen
  sysstat
  tcpdump
  vim).each do |pkg|
  package pkg do
    action :install
  end
end

include_recipe 'build-essential'

# bash system wide configuration
cookbook_file "/etc/bash.bashrc" do
  owner "root"
  group "root"
  mode 0644
end

# bash root configuration
cookbook_file "/root/.bashrc" do
  source "root.bashrc"
  owner "root"
  group "root"
  mode 0644
end

# Screen system wide configuration
cookbook_file "/etc/screenrc" do
  owner "root"
  group "root"
  mode 0644
end

# Remove ntp server
package 'ntp' do
  action :remove
end

# Run ntpdate daily
link "/etc/cron.daily/ntpdate-debian" do
  to "/usr/sbin/ntpdate-debian"
end
