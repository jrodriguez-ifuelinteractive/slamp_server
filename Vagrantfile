# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|


  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/precise64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision "shell", path: "scripts/bootstrap.sh"

  config.vm.provider "virtualbox" do |vb|
     # Customize the amount of memory on the VM:
     vb.memory = "1024"
     vb.name = "slamp_server"
  end

end
