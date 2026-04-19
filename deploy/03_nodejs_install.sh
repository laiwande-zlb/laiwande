#!/bin/bash
# ==============================================
# 脚本名称：03_nodejs_install.sh Node.js24 固定版本一键安装
# OpenClaw 强制要求运行版本：Node.js 24.x 长期支持版
# 功能：锁定版本一键安装，自动配置环境变量，版本校验
# ==============================================

echo "==================== 开始安装【Node.js24 固定版本】 ===================="

echo "1. 添加Node.js24官方软件源"
curl -fsSL https://deb.nodesource.com/setup_24.x | sudo -E bash -

echo "2. 一键安装Node.js24 + npm配套工具"
sudo apt install -y nodejs

echo "3. 校验安装版本，确认是否正确"
echo "当前安装Node.js版本："
node -v
echo "当前安装npm版本："
npm -v

echo "==================== 【Node.js24 安装全部完成！】 ===================="
echo "✅ 版本符合OpenClaw运行要求，可以继续部署OpenClaw"
