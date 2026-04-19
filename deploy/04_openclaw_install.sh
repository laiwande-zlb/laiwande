#!/bin/bash
# ==============================================
# 脚本名称：04_openclaw_install.sh OpenClaw 大模型框架一键部署
# 前置要求：已经完成上面 Node.js24 安装
# 功能：官方仓库克隆、依赖一键安装、基础环境配置
# ==============================================

echo "==================== 开始部署【OpenClaw 大模型运行框架】 ===================="

echo "1. 克隆OpenClaw官方开源仓库"
git clone https://github.com/openclaw/openclaw.git
cd openclaw

echo "2. 一键安装全部项目依赖"
npm install

echo "3. 框架基础环境编译完成"
npm run build

echo "4. 返回上级项目目录"
cd ..

echo "==================== 【OpenClaw 框架部署完成！】 ===================="
