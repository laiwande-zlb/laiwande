#!/bin/bash
# ==============================================
# 脚本名称：07_start_all.sh 全套项目一键启动脚本
# 全部前置部署完成后，运行此脚本即可启动完整对话服务
# 启动内容：Hailo硬件加速 + OpenClaw框架 + DeepSeek-7B模型对话
# ==============================================

echo "==================== 正在一键启动全套AI服务 ===================="
echo "硬件加速：Hailo AI HAT 加速卡"
echo "运行框架：OpenClaw"
echo "大模型：DeepSeek-7B-Instruct"

cd openclaw
echo "启动OpenClaw服务，加载模型与Hailo加速插件"
npm run start

echo "==================== 全套AI服务启动成功！ ===================="
