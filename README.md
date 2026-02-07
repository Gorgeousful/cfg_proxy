本项目针对headless服务器的代理设计。

在本地比如windows，将订阅链接导入本地的UI代理软件，比如(clashverge)，并找到订阅链接对应的配置文件，复制文件内容。（UI的clashverge起到一个订阅链接->配置文件的作用）

将配置内容保存在本项目的conf/config.yaml中。

start.sh启动即可。

inspect.sh可以查看当前有多少个proxy进程在运行。

shutdown.sh关闭进程。
