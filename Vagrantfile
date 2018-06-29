# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = 'rails-devkit'

  config.vm.network "forwarded_port", guest: 3000, host: 30000, host_ip: "127.0.0.1"
 # config.vm.network "forwarded_port", guest: 3306, host: 33060, host_ip: "127.0.0.1"

  config.vm.synced_folder ".", "/home/vagrant/code"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt update -y
    curl -fsSL get.docker.com -o get-docker.sh
    sh get-docker.sh
    rm get-docker.sh
    curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
    chmod +x /usr/local/bin/docker-compose
    gpasswd -a vagrant docker
  SHELL
end
