# -*- mode: ruby -*-
# vi: set ft=ruby :

# Can be either "localhost" or "<ip address on your network>"
HOST = "192.168.56.20"
# LOCAL_FOLDER = "local/path"
# VM_FOLDER = "vm/path"
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.hostname = "openstack"
  
  #config.vm.synced_folder LOCAL_FOLDER, VM_FOLDER

  if HOST == "localhost"
    config.vm.network :forwarded_port, guest: 80, host: 8080
    config.vm.network :forwarded_port, guest: 5000, host: 5000
    config.vm.network :forwarded_port, guest: 5672, host: 5672
    config.vm.network :forwarded_port, guest: 3333, host: 3333
    config.vm.network :forwarded_port, guest: 8773, host: 8773
    config.vm.network :forwarded_port, guest: 8774, host: 8774
    config.vm.network :forwarded_port, guest: 8776, host: 8776
    config.vm.network :forwarded_port, guest: 8777, host: 8777
    config.vm.network :forwarded_port, guest: 9191, host: 9191
    config.vm.network :forwarded_port, guest: 9292, host: 9292
    config.vm.network :forwarded_port, guest: 35357, host: 35357
    config.vm.network :forwarded_port, guest: 40529, host: 40529
    config.vm.network :forwarded_port, guest: 47117, host: 47117
    config.vm.network :forwarded_port, guest: 55977, host: 55977
  else
    config.vm.network :private_network, ip: HOST
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision :shell, :inline => <<-SCRIPT.gsub(/^ {8}/, '')
    #!/bin/sh
    sudo apt-get install -qq -y git
    sudo apt-get update
  SCRIPT
end