
-A 本机外网地址(opensips处于nat环境下，设置为外网地址)
-l 本机内网侦听地址
-s 本机侦听opensips通知端口
-F 不检查是否为超级用户模式
-d 调试消息输出级别
-m rtp最小端口
-M rtp最大端口

-A $PUBLIC_ADDRESS
-l $INNER_ADDRESS
-s $OPENSIPS_ADDRESS
-m $MEDIA_MIN_PORT
-M $MEDIA_MAX_PORT




export PUBLIC_ADDRESS=139.155.11.48
export INNER_ADDRESS=139.155.11.48
export OPENSIPS_ADDRESS=139.155.11.48
export MEDIA_MIN_PORT=24000
export MEDIA_MAX_PORT=36000


docker run -d rtpproxy -e PUBLIC_ADDRESS="139.155.11.48" INNER_ADDRESS="139.155.11.48" MEDIA_MIN_PORT="24000" MEDIA_MAX_PORT="36000"