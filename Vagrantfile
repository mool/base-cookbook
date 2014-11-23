# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.hostname = 'base-berkshelf'
  config.vm.box = 'chef/ubuntu-14.04'
  config.vm.network :private_network, type: 'dhcp'

  # config for vagrant-cachier
  if Vagrant.has_plugin?('vagrant-cachier')
    config.cache.scope = :box
    config.cache.auto_detect = true
  end

  # config for vagrant-omnibus
  if Vagrant.has_plugin?('vagrant-omnibus')
    config.omnibus.chef_version = 'latest'
  end

  # config for vagrant-berkshelf
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = "Berksfile"

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      'recipe[base::default]',
      'recipe[base::monit]'
    ]
  end
end
