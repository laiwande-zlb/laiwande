#!/bin/bash
# ==============================================
# 脚本名称：05_hailo_plugin.sh OpenClaw Hailo加速插件对接
# 前置要求：Hailo驱动、OpenClaw本体全部安装完成
# 功能：插件安装、配置挂载、硬件加速通道打通
# ==============================================

echo "==================== 开始安装【OpenClaw Hailo硬件加速插件】 ===================="

cd openclaw
echo "1. 安装Hailo专属加速插件"
npm install @openclaw/plugin-hailo

echo "2. 插件配置文件初始化"
mkdir -p config
cp ../config/openclaw_config.yaml.example config/openclaw_config.yaml

echo "3. 返回上级项目目录"
cd ..

echo "==================== 【Hailo加速插件对接全部完成！】 ===================="
