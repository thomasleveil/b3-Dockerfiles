Docker files for BigBrotherBot (B3)
===================================

Dockerfile to run B3 in [Docker containers](http://docker.io)


requirements
------------

* a host running [Docker](http://docker.io)
* 

Build the image
---------------

```bash
docker build -t b3 https://raw.githubusercontent.com/thomasleveil/b3-Dockerfiles/master/Dockerfile
```


Run the container
-----------------

* create a directory with your B3 config on the docker host machine in `/home/yourname/b3-share/`
* copy in there your `b3.xml` file and other B3 plugin config files
* create a new B3 container using config file `/home/yourname/b3-share/b3.xml` 

```bash
docker run -d -v /home/yourname/b3-share:/root/b3 b3 --config root/b3/b3.xml
```

