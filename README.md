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

Install
-------

```bash
docker build -t="yourname/b3" - < Dockerfile-b3
```

Usage
-----

* create a directory with your B3 config on the docker host machine in `/home/yourname/b3-share/`
* copy in there your `b3.xml` file and other B3 plugin config files
* create a new B3 container using config file `/home/yourname/b3-share/b3.xml` 

```bash
docker run -d yourname/b3 --config /home/yourname/b3-share/b3.xml
```
