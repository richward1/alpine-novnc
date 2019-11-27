bootstrap: docker
from: alpine

#Websockify
#%post
#	apk add --update git python python-dev gfortran py-pip build-base py-setuptools procps && \
#	pip install numpy && \
#	wget -O websockify.zip https://github.com/novnc/websockify/archive/v0.9.0.zip && \
#	unzip websockify.zip && \
#	cd websockify-0.9.0 && \
#	python setup.py install

#noVNC
%post
	apk add --update git python python-dev gfortran py-pip build-base py-setuptools procps bash && \
	mkdir ${SINGULARITY_ROOTFS}/novnc && \
	cd ${SINGULARITY_ROOTFS}/novnc && \
	git clone https://github.com/novnc/noVNC.git

%runscript
	bash && ${SINGULARITY_ROOTFS}/novnc/noVNC/utils/launch.sh
