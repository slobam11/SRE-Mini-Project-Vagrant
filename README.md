## Vagrant environment

This project uses Vagrant to spin up a reproducible Ubuntu 22.04 VM for local SRE labs (Docker, Minikube, etc.).

### Prereqs
- VirtualBox (latest)
- Vagrant (2.3+)
- ~6 GB RAM and 4 vCPUs free on the host

### Vagrantfile (used by `vagrant up`)
```ruby
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/jammy64"      # Ubuntu 22.04 base image
  config.vm.hostname = "mini-sre"       # VM hostname

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 6144                    # 6 GB RAM
    vb.cpus   = 4                       # 4 vCPUs
    vb.name   = "mini-sre-vm"           # Name in VirtualBox UI
  end

  config.vm.synced_folder ".", "/vagrant"  # project files available in the VM

  # Enable provisioning once scripts exist:
  # config.vm.provision "shell", path: "provision/install.sh"
end
