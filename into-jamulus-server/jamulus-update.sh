#! /bin/bash

cd /jamulus-server/ && \
source /jamulus-server/jamulus-stop.sh
if [[ $pgrep_exit_code == "0" ]]; then
    rm -rf jamulus-latest latest.tar.gz ; \
    wget https://github.com/jamulussoftware/jamulus/archive/latest.tar.gz && \
    tar -xvf latest.tar.gz && \
    cd jamulus-latest/ && \
    qmake Jamulus.pro && \
    make clean && \
    rm /usr/local/bin/Jamulus ; \
    cp Jamulus /usr/local/bin/
elif [[ $pgrep_exit_code == "2" ]]; then
    rm -rf jamulus-latest latest.tar.gz ; \
    wget https://github.com/jamulussoftware/jamulus/archive/latest.tar.gz && \
    tar -xvf latest.tar.gz && \
    cd jamulus-latest/ && \
    qmake Jamulus.pro && \
    make clean && \
    rm /usr/local/bin/Jamulus ; \
    cp Jamulus /usr/local/bin/
else
    echo "Error"
fi