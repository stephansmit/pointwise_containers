Bootstrap: docker
From: ubuntu:16.04

%post
    echo 'Installing Pointwise requirements'
    apt-get update &&     apt-get install -y default-jre libglib2.0-0 libgconf2-4 dos2unix wget 
    echo 'Download the Pointwise files'
    wget -O /opt/pw-V18.0R3-linux_x86_64-jre.sh https://file.io/YvuA7d 
    chmod -R 777 /opt/pw-V18.0R3-linux_x86_64-jre.sh

    echo 'Installing Pointwise via Terminal'
    printf 'o\n2\n\n\n\n\n\n\n\n1\n/opt/pointwise/\n\n' | /opt/pw-V18.0R3-linux_x86_64-jre.sh -c
   
%runscript
    exec '$@' 
