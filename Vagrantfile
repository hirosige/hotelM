# -*- mode: ruby -*-
# vi: set ft=ruby :

BOX_NM   = "bento/centos-7.3".freeze
GUEST_SEVER_IP = "192.168.33.50".freeze
VAGRANT_API_VERSION = 2.freeze
SYNCED_FOLDER = "/vagrant".freeze

Vagrant.configure(VAGRANT_API_VERSION) do |config|
    config.vm.box = BOX_NM
    config.vm.network "private_network", ip: GUEST_SEVER_IP
    # config.vm.network "public_network"
    # config.vm.network "forwarded_port", guest: 3000, host: 3000

    config.vm.provision "ansible" do |ansible|
       ansible.playbook = "provisioning/site.yml"
    end

    # config.vbguest.auto_update = false
    config.vm.synced_folder ".", SYNCED_FOLDER, nfs: true
    config.vm.provider "virtualbox" do |vm|
      vm.memory = 2048
      vm.cpus = 2
      vm.customize ["modifyvm", :id, "--ioapic", "on"]
    end

    if Vagrant.has_plugin?("vagrant-vbguest")
      config.vbguest.auto_update = false
    end

    if Vagrant.has_plugin?("vagrant-cachier")
      config.cache.scope = :box 
    end
end
