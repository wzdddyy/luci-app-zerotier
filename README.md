
### 新增功能：自动配置防火墙和 NAT 转发 1. 新增启动脚本
文件 : root/etc/init.d/luci-zerotier

功能 :

- 自动检测防火墙类型（fw4/nftables 或 fw3/iptables）
- 读取全局配置中的 enabled 和 nat 选项
- 当启用 NAT 时，自动添加：
  - 转发规则（允许 ZeroTier 接口的进出流量）
  - MASQUERADE 规则（NAT 地址转换） 2. 修改初始化脚本
文件 : root/etc/uci-defaults/40_luci-zerotier

修改 :

- 添加自动启用 luci-zerotier 服务 3. 修改配置界面
文件 : htdocs/luci-static/resources/view/zerotier/config.js

修改 :

- 在全局配置中添加 "Enable NAT" 开关选项 4. 添加中文翻译
文件 : po/zh_Hans/zerotier.po

新增翻译 :

- "Enable NAT" → "启用 NAT"
- "Enable automatic NAT forwarding for ZeroTier networks." → "为 ZeroTier 网络启用自动 NAT 转发。"
