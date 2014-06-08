Docker files for BigBrotherBot (B3)
===================================

Docker files to run different flavours of B3 in [Docker containers](http://docker.io)


| Dockerfile            |  description                               |
|-----------------------|--------------------------------------------|
| Dockerfile-b3         | B3 latest stable version                   |
| Dockerfile-b3-1.10    | B3 latest dev version from the 1.10 branch |




requirements
------------

* a host running [Docker](http://docker.io)
* one of the B3 Dockerfiles

Build the images
----------------

```bash
docker build -t b3 https://raw.githubusercontent.com/thomasleveil/b3-Dockerfiles/master/Dockerfile-b3
```

```bash
docker build -t b3-1.10 https://raw.githubusercontent.com/thomasleveil/b3-Dockerfiles/master/Dockerfile-b3-1.10
```


Run the containers
------------------

* create a directory with your B3 config on the docker host machine in `/home/yourname/b3-share/`
* copy in there your `b3.xml` file and other B3 plugin config files
* create a new B3 container using config file `/home/yourname/b3-share/b3.xml` 

```bash
docker run -d -v /home/yourname/b3-share:/root/b3 b3 --config root/b3/b3.xml
```


```bash
docker run -d -v /home/yourname/b3-share:/root/b3 b3-1.10 --config root/b3/b3.xml
```
