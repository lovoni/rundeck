FROM jordan/rundeck:2.10.8
MAINTAINER lbognini@gmail.com

#Install AWS CLI
RUN apt-get install python

RUN curl -O https://bootstrap.pypa.io/get-pip.py  \
    && python get-pip.py --user \
    && echo "export PATH=~/.local/bin:$PATH" >> ~/.bash_profile \
    && . ~/.bash_profile

RUN ~/.local/bin/pip install awscli --user 

VOLUME ~/.aws
