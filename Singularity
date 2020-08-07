Bootstrap: docker
From: ubuntu:16.04

%post
    echo Update apt-get
    apt-get -y update &&     apt-get -y install libglu1 libxrender-dev libxcursor1 libxft2 libxinerama1 
    apt-get -y install libxt6 libgl1 libx11-xcb1 qt5-default libxss1
    echo 'Installing Pointwise requirements'
    apt-get update &&     apt-get install -y default-jre libglib2.0-0 libgconf2-4 dos2unix wget 
    echo 'Download the Pointwise files'
    wget -O /opt/pw-V18.0R3-linux_x86_64-jre.sh https://transfer.sh/UspLZ/installer.sh 
    chmod -R 777 /opt/pw-V18.0R3-linux_x86_64-jre.sh

    echo 'Installing Pointwise via Terminal'
    printf 'o\n2\n\n\n\n\n\n\n\n1\n/opt/pointwise/\n\n' | /opt/pw-V18.0R3-linux_x86_64-jre.sh -c
   
%runscript
    exec '$@' 
