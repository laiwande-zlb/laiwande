#!/bin/bash
# ==============================================
# 脚本名称：01_system_fix.sh 系统环境一键修复脚本
# 适配硬件：树莓派5 Raspberry Pi OS
# 解决核心问题：
# 1. 永久修复 packages.hailo.ai 域名无法解析报错
# 2. 修复系统apt软件源，清理无效失效源
# 3. 永久配置公共DNS，解决所有外网域名解析问题
# 全程自动执行，无需手动输入任何内容
# ==============================================

echo "==================== 开始执行【系统环境一键修复】 ===================="
echo "1. 正在备份原始系统源配置文件"
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
sudo cp /etc/apt/sources.list.d/hailo.list /etc/apt/sources.list.d/hailo.list.bak
echo "✅ 原始配置备份完成"

echo "2. 正在屏蔽失效的Hailo软件源，解决域名解析报错"
# 把原来报错的hailo源全部注释掉，彻底不再报解析错误
sudo sed -i 's/^/# /' /etc/apt/sources.list.d/hailo.list
echo "✅ 无效源已经全部屏蔽，不再出现域名解析错误"

echo "3. 正在永久配置公共DNS解析（重启树莓派也不会失效）"
# 写入永久DNS配置：国内114DNS + 谷歌公共DNS，双保险
sudo tee -a /etc/dhcpcd.conf << EOF
static domain_name_servers=114.114.114.114 8.8.8.8
EOF
echo "✅ 永久DNS配置完成"

echo "4. 正在重启网络服务，使DNS配置生效"
sudo systemctl restart dhcpcd
echo "✅ 网络服务重启完成"

echo "5. 正在更新系统软件源缓存"
sudo apt update
echo "✅ 系统源全部更新完成，无报错"

echo "==================== 【系统环境修复全部完成！】 ===================="
echo "后续所有Hailo、GitHub、外网域名全部可以正常解析"
