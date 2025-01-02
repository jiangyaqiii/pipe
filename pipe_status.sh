#!/bin/bash

if [[ $(docker ps -qf name=pipe-contain) ]]; then
    echo "pipe正在运行"
else
    echo "停止"
fi
