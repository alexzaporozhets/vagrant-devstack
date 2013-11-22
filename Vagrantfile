# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  # Allows host-only access to the machine using a specific IP.
  config.vm.network :private_network, ip: "172.16.0.2"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end
  config.vm.provision "shell", inline: "apt-get update && apt-get install -qqy git"
  config.vm.provision :shell, :path => 'init.sh', :privileged => false
end
