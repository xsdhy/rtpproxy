# rtpproxy镜像

The RTPproxy is a high-performance software proxy for RTP streams that can work together with Sippy B2BUA, Kamailio, OpenSIPS and SER. 

[rtpproxy](https://www.rtpproxy.org/) 

[rtpproxy-github](https://github.com/sippy/rtpproxy) 

[配置说明](https://www.rtpproxy.org/doc/master/user_manual.html#MAKESRC) 


## 启动说明
直接运行即可，也可以通过设置环境变量设置一些运行时参数

## 配置与环境变量说明

    
| 环境变量     | 命令行参数 | 说明                                               | 默认值             |
|--------------|------------|----------------------------------------------------|:-------------------|
| PUBLIC_IPV4  | -A         | 本机外网地址(opensips处于nat环境下，设置为外网地址) | 宿主机外网ip       |
| PRIVATE_IPV4 | -l         | 本机内网侦听地址                                   | 宿主机内网ip       |
| SOCKET_ADDR  | -s         | 本机侦听opensips通知端口                           | udp:127.0.0.1:7722 |
| MAX_PORT     | -M         | rtp最大端口                                        | 20000              |
| MIN_PORT     | -m         | rtp最小端口                                        | 30000              |



