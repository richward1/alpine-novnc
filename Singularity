bootstrap: docker
from: alpine

%post
	apk add xclock xvfb fluxbox tmux x11vnc st xterm
	#sed -r -i 's/\[exec\] \(xterm\) \{xterm\}/\[exec\] \(st\) \{st\}/' /usr/share/fluxbox/menu

%runscript
	xinit -- /usr/bin/Xvfb :$(find_free_servernum) -screen 0 1024x768x24 &> /dev/null & x11vnc -q -passwd password -display :$(find_free_servernum) & \
	echo "Starting X Server on :$(find_free_servernum)..." & \
	echo "VNC Password is: password"

