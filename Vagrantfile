# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Jenkins
  config.vm.network :forwarded_port, guest: 8080, host: 18080

  # Artifactory
  config.vm.network :forwarded_port, guest: 8081, host: 18081

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network :private_network, ip: "192.168.20.10"

  # Shellscript provisioning, setup box from windows
  config.vm.provision :shell, :path => "bootstrap.sh"

  # Ansible provisioning
  # config.vm.provision :ansible do |ansible|
  #   ansible.sudo = true
  #   ansible.verbose = true
  #   ansible.playbook = "provisioning/playbook.yml"
  #   ansible.inventory_file = "provisioning/ansible_hosts"
  # end

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider :virtualbox do |vb|
    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

end
