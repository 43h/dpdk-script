#! /bin/sh

if [ $# -eq 0 ]; then
    echo "Usage: $0 version"
    echo "example: $0 22.07"
    exit 1
fi

wget http://fast.dpdk.org/rel/dpdk-$1.tar.gz 
