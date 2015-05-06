# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "centos"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140110.box"

  config.vm.provider :virtualbox do |vb|
    vb.name = "scala-env-getting-started"
  end


  config.vm.define :web do |web|
    web.vm.network :private_network, ip: "192.168.33.101"
  end
end
