#!/bin/bash

cd /home/$USER/Downloads
pwd

find . -iname go* | while read fname; do
    echo "$fname";
    tar -xvzf /home/rafael/Downloads/$fname
done

echo "Old version: "
go version

which go | while read sname; do
    echo "$sname";
    mkdir /home/rafael/Downloads/go-temp
    sudo mv /usr/local/go /home/rafael/Downloads/go-temp
    sudo mv /home/rafael/Downloads/go /usr/local/.
done

rm -r /home/rafael/Downloads/go-temp

echo "New version: "
go version