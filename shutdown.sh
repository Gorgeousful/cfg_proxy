#!/bin/bash

# 关闭clash服务
PID_NUM=`ps -ef | grep [m]ihomo-linux-a | wc -l`
echo "找到 $PID_NUM 个 mihomo 进程需要关闭"
PID=`ps -ef | grep [m]ihomo-linux-a | awk '{print $2}'`
if [ $PID_NUM -ne 0 ]; then
	kill -9 $PID
	# ps -ef | grep [c]lash-linux-a | awk '{print $2}' | xargs kill -9
fi

# 清除环境变量
> /etc/profile.d/clash.sh

echo -e "\n服务关闭成功，请执行以下命令关闭系统代理：proxy_off\n"
