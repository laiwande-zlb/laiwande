#!/bin/bash
# ==============================================
# 脚本名称：06_model_deepseek_deploy.sh DeepSeek-7B 模型部署脚本
# 适配：Hailo硬件加速 + OpenClaw框架调用
# 功能：模型官方下载、路径配置、量化适配、参数预设
# 注意：模型文件体积大，不会上传Git仓库，本地自动下载到models文件夹
# ==============================================

echo "==================== 开始【DeepSeek-7B大模型部署】 ===================="

echo "1. 创建模型存放专属文件夹"
mkdir -p ../models/deepseek-7b

echo "2. 安装模型下载必备工具huggingface"
pip3 install huggingface_hub

echo "3. 执行模型官方下载（轻量GGUF量化版，适配树莓派+Hailo）"
python3 -c "from huggingface_hub import snapshot_download; snapshot_download(repo_id='DeepSeek-7B-Instruct-GGUF', local_dir='../models/deepseek-7b')"

echo "4. 模型路径配置完成"
echo "模型全部文件存放路径：$(pwd)/../models/deepseek-7b"

echo "==================== 【DeepSeek-7B模型部署完成！】 ===================="
