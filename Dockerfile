FROM jordan/rundeck:2.10.8
MAINTAINER lbognini@gmail.com

#Install AWS CLI
RUN apt-get install python python-pip && pip install awscli && aws configure

