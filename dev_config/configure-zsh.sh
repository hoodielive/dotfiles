#/usr/bin/env bash

in_path_zsh()
{
  cmd='zsh'
  ourpath='/bin'
  result=1
  oldIFS=$IFS
  IFS=":"

  for directory in "$ourpath"
  do
    if [ -x $directory/$cmd ]; then
      result=0
    fi
done

IFS=$oldIFS
return $result
}

# Test installation of zsh. 

in_path_zsh

# If zsh is not installed; install it.

if  [ $result == 1 ]; then
    sudo apt install zsh git curl -y 

    # Now configure oh-my-zsh.
    
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    yes [answer] | ./configure-zsh.sh
fi


# Make sure it installed.

in_path_zsh

if  [ $result == 0 ]; then
    echo "Installed. Moving on..."
    exit
fi

