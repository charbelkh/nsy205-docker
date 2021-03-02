# nsy205-docker
Base node docker application
This app is constituted of a simple node js http server that is booten in a docker container, receives a message via a get request to the desired exposed port and echoes that message back in a response json object along with some other data 
the purpose of it is to be used to demonstrate hat the docker container is properly started/configured


it can also be used to demo multiple docker functionalities including but not limited to :
- usage of network (binding to local network via host vs using port forwarding)
- setting up docker in multiple ways using a docker compose file , adding it as a service ina swarm and observing the replication/load balancing of calls
- providing a simple approach for testing packages compatibility with OS's via switching out the base images and packages in the dockerfile/package.json file

 

## Usage

###
```
docker run node-docker-echo -p 3000:3000
```

### Visit URL
```sh
curl http://localhost:3000/?message=wat
```

### Output
```json
{
  "message": "wat",
  "env": {
    "PATH": "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin",
    "HOSTNAME": "083bf20472c9",
    "TERM": "xterm",
    "VERSION": "v6.2.1",
    "NPM_VERSION": "3",
    "HOME": "/root"
  }
}
```
