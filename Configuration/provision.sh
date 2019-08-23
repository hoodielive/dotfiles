#!/bin/bash 

#  1 Update the System and Validate it is completely up-to-date. 
# First figure out what system this is redhat, debian, suse, arch, gentoo.


# 2 Install development tools.

# 3 Read in a file that lists the packages you want installed on the system. 
# First verify that all 3rd party repos are up-to-date. 

# Configurations can be a part of a case statement.

# ZSH Configuration
if zsh is installed 
    curl oh-my-zsh 
if zsh is not installed 
    install it and set zhann as the default zsh environment
    set zsh as the default shell for user or perhaps globally for ALL users 
fi

# rbenv Configuration 
if the build tools are installed 
    git clone rbenv and ruby-build 
if build tools are not installed 
    install build tools 
    git clone rbenv and ruby-build
fi

if ruby is installed 
    if it is 2.6.3 
        continue
    else 
        rbenv install 2.6.3
        rbenv global 2.6.3
fi

# Is gem installed?
