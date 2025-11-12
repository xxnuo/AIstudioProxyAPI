#!/bin/bash
echo "停止服务..."
systemctl --user stop aistudioproxyapi.service
echo "禁用开机自启..."
systemctl --user disable aistudioproxyapi.service
echo "删除服务文件..."
rm -f ~/.config/systemd/user/aistudioproxyapi.service
echo "重载 systemd 配置..."
systemctl --user daemon-reload
systemctl --user reset-failed 2>/dev/null

echo "卸载完成！"
echo ""
echo "提示："
echo "- 如需删除应用程序本身，请手动删除相关文件"
echo "- 如需查看历史日志：journalctl --user -u aistudioproxyapi.service"
