#!/bin/bash

# 遍历当前目录下的一级文件夹
for dir in */; do
    # 去掉目录名后面的斜杠
    dir_name=${dir%/}
    
    # 构造对应的md文件名
    md_file="${dir_name}/${dir_name}.md"
    
    # 检查md文件是否已存在
    if [ ! -f "$md_file" ]; then
        # 如果不存在，则创建
        touch "$md_file"
        echo "已创建: $md_file"
    else
        echo "已存在，跳过: $md_file"
    fi
done
