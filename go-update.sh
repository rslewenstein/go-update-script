#!/bin/bash

cd /home/$USER/Downloads
pwd

find . -iname go* | while read fname; do
    echo "$fname";
    tar -xvzf /home/$USER/Downloads/$fname
done

echo "Old version: "
go version

which go | while read sname; do
    echo "$sname";
    mkdir /home/$USER/Downloads/go-temp
    sudo mv /usr/local/go /home/$USER/Downloads/go-temp
    sudo mv /home/$USER/Downloads/go /usr/local/.
done

rm -r /home/$USER/Downloads/go-temp

echo "New version: "
go version