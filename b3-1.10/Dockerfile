FROM ubuntu:trusty

RUN apt-get update

# install B3
RUN apt-get -y install python-pip python-dev build-essential libsqlite3-dev git
RUN pip install python-dateutil --upgrade
RUN pip install -e git+git://github.com/BigBrotherBot/big-brother-bot.git@release-1.10#egg=b3

#
ENTRYPOINT ["/usr/local/bin/b3_run"]
CMD ["--help"]