#!/bin/sh
set -x

OS_RELEASE=/etc/os-release
OS=

# First figure out what system this is redhat, debian, suse, arch, gentoo.

if egrep -q -i debian ${OS_RELEASE}; then
	OS="debian"
elif egrep -q -i redhat ${OS_RELEASE}; then
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

# Is the network up 

if systemctl is-active NetworkManager; then 
	continue 
else
	echo "The Network is not up.. "
	exit 2
fi

# FIXME
# Perhaps we should determine that in the case there is an instance of debian, we should ascertain specifically what
# flavor of debian we are provisioning.

# Then check disk space and memory

# Update the System and Validate it is completely up-to-date.
# Remove broken symlinks and dependencies

# Each distro has development tools - make sure to install them along with clang.
# build-essential (ubuntu)
# base-devel (arch, manjaro)
# development-tools (redhat)

# Read in a file that lists the packages you want installed on the system.

# First verify that all 3rd party repos are up-to-date.

# Configurations can be a part of a case statement.

# ZSH Configuration
if zsh is installed  - How would you test if zsh is installed ?
    curl oh-my-zsh  - Yes but is curl installed because on ubuntu it is not installed by default.
if zsh is not installed
    install it  - Yes but is the Logic present to install based upon distro variant?
    && and set zhann as the default zsh environment
    source it &&
    set zsh as the default shell for user or perhaps globally for ALL users
fi

install neovim, vim and emacs

# rbenv Configuration
if the build tools are installed
    git clone rbenv and ruby-build
if build tools are not installed
    install build tools # Yes but is there a reason to re-check this seeing that you've already ensured that they are installed? 
    git clone rbenv and ruby-build
fi

if ruby is installed
if $(which ruby) 2>&1 > /dev/null; then 
	if it is 2.6.3 (ruby --version | awk '{ print $2 }')
        continue
    else
        rbenv install 2.6.3
        rbenv global 2.6.3
fi

# Is gem installed?
if gem is installed
    echo "The gem home environment is " gem env home function
    gem install bundler
    gem install rails
    gem install pry
    gem install neovim
else
    echo "gem is not installed." && install it && run test again


# NodeJS
curl nvm and install v12
npm install -g cli-highlight, create-react-app, express generator, typescript, neovim


# Python3
if python3 is installed
    if pip3 is installed
        pip3 install neovim, bpython, ptpython, ptipython
if python3 is not installed
    $PACKAGE_MANAGER install python3, pip3
        pip3 install neovim, bpython, ptpython, ptipython
fi

# Csharp
install csharp (mono)

# Golang
install golang

# Rust
install rustup

# Haskell
install haskell

# Racket
install racket

# Crystal
install crystal

# Erlang
install erlang

# Elixir
install elixir

# Perl6
install perl6

# PHP / Composer
install php7 composer laravel

# Virtualization
install VirtualBox, Vagrant, Terraform, Docker and Habor

# Graphics / Video / 3D
blender3d, natron, lightworks, gimp, inkscape, scribus

# API
httpie, jq

# Parser and Regex support
ripgrep, sift, ag, ack, pt, ucg, git grep

# Email Support
neomutt, thunderbird or evolution

# Windows apps on linux
playonlinux

# IDE
monodevelop

# visualcode
curl
extract
install
code install plugins

# visual studio (unity)
just install

# rider (unity)
just install

# monodevelop ide
just install

# neovim configuration
make .config/nvim/init.vim
import basic neovim configuration and inoremap jj <ESC> 
update remote
pluginstall
plugupdate
plugclean

# doom emacs configuration
emacs vs25-26
clone doom
change to development branch
quickstart

# Fonts
mono dank
fira code
fc-cache -fv

# Icons
paper themes

# Themes

# Wallpaper
    # Low Poly
    # Unsplash

