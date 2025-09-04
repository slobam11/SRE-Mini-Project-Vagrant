An end-to-end demo project that shows how to build a local **SRE lab**:
Vagrant VM (Ubuntu 22.04, VirtualBox)

The goal is to have a fully automated environment with a single `vagrant up`.

---

## Architecture

1. Host OS (Windows/Linux/macOS)
2. Vagrant + VirtualBox → Ubuntu 22.04 VM
---

## Prerequisites

- [Oracle VirtualBox](https://www.virtualbox.org/)
- [Vagrant](https://www.vagrantup.com/downloads)
- Git
- Minimum **6 GB RAM** and **4 vCPUs** available on the host

---

## Getting Started

```bash
# Clone the repo
git clone https://github.com/<your-user>/sre-mini-project.git
cd sre-mini-project

# Start VM
vagrant up

# Access the VM
vagrant ssh

# Check Kubernetes resources
cd /vagrant

make status
