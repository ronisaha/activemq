# Apache ActiveMQ

----

Docker image with ApacheActiveMQ

## How to use this image?

----
### start a ActiveMQ instance
```bash
$ docker run --name some-activemq -d ronisaha/activemq
```

### start with persistent storage

----
data is stored in the `VOLUME /data`, which can be used with --volumes-from some-volume-container or -v /docker/host/dir:/data
(see [docs.docker volumes](https://docs.docker.com/engine/tutorials/dockervolumes/)).

run following command:

```bash
$ docker run --name some-activemq -d -v $PWD/data:/data ronisaha/activemq
```

## Port and services:

----

ampq: 5672  
tcp: 61616  
stomp: 61613  
mqtt: 1883  
ws: 61614  
WebConsole: 8161  
