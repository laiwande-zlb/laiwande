#!/bin/bash
# ==============================================
# 脚本名称：02_hailo_install.sh Hailo AI HAT 驱动一键安装
# 适配硬件：树莓派5 + Hailo AI HAT 加速卡
# 功能：固定官方适配版本驱动、SDK全部一键安装
# 自动配置硬件权限、用户权限、驱动开机自启
# ==============================================

echo "==================== 开始安装【Hailo加速卡全套驱动SDK】 ===================="

echo "1. 安装驱动必备系统依赖库"
sudo apt install -y build-essential git python3-pip python3-dev

echo "2. 克隆官方Hailo适配仓库"
git clone https://github.com/hailo-ai/hailo-rpi5-examples.git
cd hailo-rpi5-examples

echo "3. 一键执行官方自动安装脚本"
./install.sh

echo "4. 配置当前用户硬件访问权限"
sudo usermod -aG hailo $USER

echo "5. 返回上级项目目录"
cd ..

echo "==================== 【Hailo驱动SDK全部安装完成！】 ===================="
echo "⚠️  注意：需要重启树莓派，驱动才能完全生效！重启命令：sudo reboot"

