# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "trusty64"
  config.vm.box_url = "https://vagrantcloud.com/ubuntu/boxes/trusty64/versions/1/providers/virtualbox.box"

  # NAT port forwarding
  config.vm.network :forwarded_port, guest: 3306, host: 3306

  # synced/shared folders
  config.vm.synced_folder "~/work", "/work",     mount_options: ["dmode=777,fmode=777"]

  # settings for vm
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024", "--cpus", "4", "--ioapic", "on"]
    vb.gui = false
  end

  config.vm.provision :puppet do |puppet|
    puppet.module_path = "modules"
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "init.pp"
  end

end
