# Command Central provisioning

Document descibring CC composite template. A template based provisioning and configuration of the webMethods components.

## Command central server

For command central, a docker image is used from the official SoftwareAG docker store. 

More info @ https://store.docker.com/images/softwareag-commandcentral

```bash
# Start Command central
docker run --name usp-comand-central -d -p 8091:8091 -p 8090:8090 store/softwareag/commandcentral:10.1.0.1-server
```

Open browser at https://localhost:8091 with username: 'Administrator' and password: 'manage'.

## Composite template

TODO