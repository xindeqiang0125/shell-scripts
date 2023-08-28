#!/bin/bash

path=$1
name=$2

cd $path

pidof java | xargs kill
echo "停止成功"

cp __product.jar $name
echo "拷贝执行文件成功"

java -jar $name &
echo "启动"