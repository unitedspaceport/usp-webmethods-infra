# Vagrant provisioning

Provisioning of all centos VM's using vagrant. The current Vagrantfile defines 2 centos machines:

- Build server
- Test server

```bash
# Provision vm's
cd vm-provisioning
vagrant up

# Provision can take a while ☕️

# ssh into machine
vagrant ssh build
vagrant ssh test

# Verify machines
ping 192.168.50.4	# Build server
ping 192.168.50.5	# Test server
```


Combine docker and vagrant network:

https://stackoverflow.com/questions/48507357/access-vagrant-vms-from-inside-docker-container/48650523#48650523

