#!/bin/bash

# GitHub Pages 部署脚本

echo "开始部署到 GitHub Pages..."

# 检查是否有 git 仓库
if [ ! -d ".git" ]; then
    echo "错误: 当前目录不是一个 git 仓库"
    exit 1
fi

# 添加所有文件
git add .

# 提交更改
git commit -m "Update GitHub Pages site"

# 推送到 GitHub
git push origin main

echo "部署完成！请在 GitHub 仓库设置中确保已启用 GitHub Pages。"
echo "访问 https://<your-username>.github.io 查看你的网站。"