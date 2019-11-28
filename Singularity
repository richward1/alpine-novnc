bootstrap: docker
from: alpine

%labels
	Author & Maintainer: Rich Ward
	Version: 1.0

%help
	Singularity file for running noVNC in an Alpine-based container.
	This file will install x11vnc, which is the VNC server, xorg-server, which is the X server, and noVNC which is the web client.

#Install python & deps for websockify, x11vnc & xvfb for VNC server, & an x server because Alpine doesn't come with one.
%post
	apk add --update git python python-dev gfortran py-pip build-base py-setuptools procps x11vnc xvfb xorg-server bash && \
	pip install numpy && \
	wget -O websockify.zip https://github.com/novnc/websockify/archive/v0.9.0.zip && \
	unzip websockify.zip && \
	cd websockify-0.9.0 && \
	python setup.py install && \
	echo "Cleaning up..." && \
	rm -rf /websockify-0.9.0

#Install noVNC to /
%post
	mkdir -p /novnc && \
	cd /novnc && \
	git clone https://github.com/novnc/noVNC.git 
	
#Run noVNC and x11vnc in parallel.
%runscript
	/novnc/noVNC/utils/launch.sh & x11vnc
