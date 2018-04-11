FROM jordan/rundeck:2.10.8
MAINTAINER lbognini@gmail.com

#Install AWS CLI
RUN apt-get install python-setuptools python-dev build-essential  \
    && easy_install pip  \
    && pip install --upgrade virtualenv \
    && pip install awscli && aws configure

VOLUME ~/.aws
