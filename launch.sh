#!/bin/sh
find_free_servernum()
{
	i=1
        while [ -f /tmp/.X$i-lock ]; do
        	i=$(($i + 1))
        done
        echo $i
}

randpw(){ < /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-16};echo;}

PASSWD=$(randpw)

echo "Starting X server on :$(find_free_servernum)" && \
echo "VNC Password is: $PASSWD" && \
xinit -- /usr/bin/Xvfb :$(find_free_servernum) -screen 0 1024x768x24 &> /dev/null & x11vnc -q -passwd $PASSWD -display :$(find_free_servernum)
