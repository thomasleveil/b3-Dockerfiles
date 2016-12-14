FROM ubuntu:trusty

RUN apt-get update \
  && apt-get -y install python-pip python-dev build-essential libsqlite3-dev python-mysqldb git

RUN pip install python-dateutil --upgrade
#RUN pip install b3
RUN git clone https://github.com/ptitbigorneau/BigBrotherBot-For-UrT43.git /root/B3bin


ENTRYPOINT ["python","/root/B3bin/b3_run.py"]
CMD ["--help"]
