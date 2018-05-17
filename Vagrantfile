Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.vm.hostname = "codepsd-devbox"
    config.vm.network "private_network", ip: "192.168.50.6"
    config.vm.network "forwarded_port", guest: 3307, host: 3307
    config.ssh.forward_agent = true

    # Set synced folder
    config.vm.synced_folder ".", "/vagrant",
        id:     "vagrant-root",
        owner:  "vagrant",
        group:  "www-data",
        mount_options: ["dmode=775,fmode=664"]

    config.vm.provision :shell do |s|
        s.path = "provision/run.sh"
    end
end
