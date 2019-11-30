bootstrap: docker
from: alpine

%post
	apk add xclock xvfb fluxbox tmux x11vnc st && \
	sed -r -i 's/\[exec\] \(xterm\) \{xterm\}/\[exec\] \(st\) \{st\}/' /usr/share/fluxbox/menu && \
	echo "exec fluxbox" > ~/.xinitrc && \	

%startscript
	xinit -- /usr/bin/Xvfb :5 -screen 0 1024x768x24 & x11vnc -display :5

