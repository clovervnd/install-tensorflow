#!/bin/bash 
GPU=$1

cd ~
sudo apt-get install python-pip python-dev python-virtualenv
virtualenv --system-site-packages Tensorflow
source ~/Tensorflow/bin/activate
easy_install -U pip

if [ "$GPU" == "GPU" ]
then
	pip install --upgrade tensorflow-gpu 
else
	pip install --upgrade tensorflow
fi

echo "alias tensorflow='source ~/Tensorflow/bin/activate'"	>> ~/.bashrc
source ~/.bashrc 
