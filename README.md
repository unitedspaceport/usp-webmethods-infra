# webMethods infra of usp

Project contains the assets of the usp webMethods infrastructure.

## Command central

For command central, a docker image is used from the official SoftwareAG docker store. 

More info @ https://store.docker.com/images/softwareag-commandcentral

```bash
# Start Command central
docker run --name usp-comand-central -d -p 8091:8091 -p 8090:8090 store/softwareag/commandcentral:10.1.0.1-server
```

Open browser at https://localhost:8091 with username: 'Administrator' and password: 'manage'.

## VM provisioning

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

## Composite template provisioning

Automated installation of all webMethods components using Command Central composite template provisioning.

TODO

## Additional provisioning

TODO (Install Jenkins)

 