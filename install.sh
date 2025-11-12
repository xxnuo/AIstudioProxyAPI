#!/bin/bash

# 安装服务（为当前用户）
mkdir -p ~/.config/systemd/user
cp aistudioproxyapi.service ~/.config/systemd/user/

# 重载配置
systemctl --user daemon-reload

# 启用服务（开机自启）
systemctl --user enable aistudioproxyapi.service

# 启动服务
systemctl --user restart aistudioproxyapi.service

# 查看状态
systemctl --user status aistudioproxyapi.service

# 查看日志
journalctl --user -u aistudioproxyapi.service -f