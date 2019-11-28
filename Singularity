bootstrap: docker
from: alpine

#Install python & deps for websockify, x11vnc & xvfb for VNC server
#xclock for testing
%post
	apk add --update git python python-dev gfortran py-pip build-base py-setuptools procps xclock x11nvc xvfb && \
	pip install numpy && \
	wget -O websockify.zip https://github.com/novnc/websockify/archive/v0.9.0.zip && \
	unzip websockify.zip && \
	cd websockify-0.9.0 && \
	python setup.py install && \
	echo "Cleaning up..." && \
	rm -rf /websockify-0.9.0

#noVNC
%post
	apk add bash && \
	mkdir -p ${SINGULARITY_ROOTFS}/novnc && \
	cd ${SINGULARITY_ROOTFS}/novnc && \
	git clone https://github.com/novnc/noVNC.git

#%runscript
#	bash && ${SINGULARITY_ROOTFS}/novnc/noVNC/utils/launch.sh

#Usage - run 'x11nvc -create' to start the vnc server.
#Then we need to test running something or install some desktop perhaps?
