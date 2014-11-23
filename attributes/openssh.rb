#
# Cookbook Name:: base
# Attributes:: openssh
#
# Copyright (C) 2014 Pablo Gutiérrez del Castillo
#

default['openssh']['server']['port'] = '22'
default['openssh']['server']['protocol'] = '2'
default['openssh']['server']['key_regeneration_interval'] = '1h'
default['openssh']['server']['server_key_bits'] = '1024'
default['openssh']['server']['syslog_facility'] = 'AUTH'
default['openssh']['server']['log_level'] = 'INFO'
default['openssh']['server']['login_grace_time'] = '2m'
default['openssh']['server']['permit_root_login'] = 'without-password'
default['openssh']['server']['strict_modes'] = 'yes'
default['openssh']['server']['r_s_a_authentication'] = 'yes'
default['openssh']['server']['pubkey_authentication'] = 'yes'
default['openssh']['server']['permit_empty_passwords'] = 'no'
default['openssh']['server']['challenge_response_authentication'] = 'no'
default['openssh']['server']['use_p_a_m'] = 'yes'
default['openssh']['server']['use_dns'] = 'no'
default['openssh']['server']['x11_forwarding'] = 'yes'
default['openssh']['server']['x11_display_offset'] = '10'
default['openssh']['server']['print_motd'] = 'yes'
default['openssh']['server']['print_lastlog'] = 'yes'
default['openssh']['server']['t_c_p_keep_alive'] = 'yes'
