
#!/bin/sh
set -x

OS_RELEASE=/etc/os-release
OS=
NETWORK_ACTIVE=false

# Functions. 
ubuntu_update() 
{
	sudo apt update -y && sudo apt full-upgrade -y
}

red_hat_update() 
{
	sudo yum update -y
}

opensuse_update()
{
	sudo zypper update -y
}

gentoo_update()
{
	# FIXME this shit will take 9 days lol. 
	sudo emerge -Sync 
}

arch_update()
{
	sudo pacman -Syyu
}

# Figure out what system this is: redhat, debian, suse, arch, gentoo.

if egrep -q -i redhat ${OS_RELEASE}; then
	OS="redhat" 
elif egrep -q -i ubuntu ${OS_RELEASE}; then
	OS="ubuntu"
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

# Is the network up?

if systemctl is-active NetworkManager > /dev/null; then 
	NETWORK_ACTIVE=true
else
	NETWORK_ACTIVE=false
	exit 2
fi

# FIXME Because this is unneccessary in the context of an if statement; use a case instead. 

if ${NETWORK_ACTIVE} -eq true && ${OS} -eq 'ubuntu'; then 
	# FIXME
	{ubuntu,redhat,gentoo,opensuse,arch}_update 1&2>/dev/null
fi
