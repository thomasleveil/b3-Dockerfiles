FROM ubuntu:trusty

RUN apt-get update 
  && apt-get -y install python-pip python-dev build-essential libsqlite3-dev

RUN pip install python-dateutil --upgrade
RUN pip install b3

ENTRYPOINT ["/usr/local/bin/b3_run"]
CMD ["--help"]