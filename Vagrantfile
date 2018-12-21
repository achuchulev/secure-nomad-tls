# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "achuchulev/xenial64"
  config.vm.box_version = "0.0.1"
  config.vm.hostname = "nomad"
  config.vm.provision "shell", path: "install/tools.sh", privileged: false
  config.vm.provision "shell", path: "install/nomad.sh", privileged: false
  config.vm.provision "shell", path: "install/cfssl.sh", privileged: false

  # Expose the nomad api and ui to the host
  config.vm.network "forwarded_port", guest: 4646, host: 4646, auto_correct: true

  # Increase memory for Virtualbox
  config.vm.provider "virtualbox" do |vb|
        vb.memory = "1024"
  end
end
