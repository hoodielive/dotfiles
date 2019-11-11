
#!/bin/sh
set -x

OS_RELEASE=/etc/os-release
OS=
NETWORK_ACTIVE=false

# First figure out what system this is redhat, debian, suse, arch, gentoo.

if egrep -q -i ubuntu ${OS_RELEASE}; then
	OS="ubuntu"
elif egrep -q -i redhat ${OS_RELEASE}; then
	OS="redhat" 
elif egrep -q -i opensuse ${OS_RELEASE}; then
	OS="opensuse"
elif egrep -q -i arch ${OS_RELEASE}; then
	OS="arch"
elif egrep -q -i gentoo ${OS_RELEASE}; then
	OS="gentoo"
elif egrep -q -i freebsd ${OS_RELEASE}; then
	OS="freebsd"
else
	NOT_PROVISIONED="true"
fi

# Is the network up 

if systemctl is-active NetworkManager > /dev/null; then 
	NETWORK_ACTIVE=true
else
	echo "The Network is not up.. "
	exit 2
fi
