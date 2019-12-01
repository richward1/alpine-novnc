bootstrap: docker
from: alpine

%files -p
	launch.sh /launch.sh

%post
	apk add xclock xvfb fluxbox tmux x11vnc st xterm && \
	chmod 777 /launch.sh

%runscript
	/./launch.sh
