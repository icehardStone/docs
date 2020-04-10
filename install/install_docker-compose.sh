#!/bin/bash
sudo yum install -y python

sudo yum install -y python2-pip.noarch

sudo yum install python-devel

sudo pip install ./docker_compose-1.25.4-py2.py3-none-any.whl  --ignore-installed requests