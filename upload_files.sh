#!/bin/bash
if [ "$1" == "-h" ] ; then
    echo "Usage: `basename $0` pointwise_dir/"
    exit 0
fi
if [ $# -eq 0 ]
  then
    echo "Please supply the directory with Pointwise"
    exit
fi
DIR=$1

echo "upload the installer"
INSTALLER=$(curl -F "file=@$DIR/pw-V18.0R3-linux_x86_64-jre.sh" https://file.io | jq ".link")

echo "Storing the links"
echo "INSTALLER=$INSTALLER" > LINKS

