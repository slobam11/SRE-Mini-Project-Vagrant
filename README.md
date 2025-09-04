 Vagrant environment

This project uses Vagrant to spin up a reproducible Ubuntu 22.04 VM for local SRE labs (Docker, Minikube, etc.).

 Prereqs
- VirtualBox (latest)
- Vagrant (2.3+)
- ~6 GB RAM and 4 vCPUs free on the host

 Vagrantfile (used by `vagrant up`)
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


# Proof #
Prof if is the Lab is working 
<img width="554" height="283" alt="image" src="https://github.com/user-attachments/assets/2bba8c5b-78bd-42b9-996b-fc738d38dd36" />
SSh working <img width="554" height="156" alt="image" src="https://github.com/user-attachments/assets/c374284a-9095-4a96-9061-ac7a5f5df258" />
ifconfig or net ip <img width="553" height="216" alt="image" src="https://github.com/user-attachments/assets/d0bec0f9-809c-4160-8f98-c52f803faa00" />
Vagrant confg file >you have in the same project <img width="554" height="343" alt="image" src="https://github.com/user-attachments/assets/bc629bc8-84b5-4f43-ad79-60935d6c0a70" />


