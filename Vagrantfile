# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "landregistry/ubuntu"
  config.vm.provision :shell, path: "script.sh"
  config.vm.network "forwarded_port", guest: 4567, host: 4567
end
