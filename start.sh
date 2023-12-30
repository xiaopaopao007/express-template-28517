#!/bin/bash
## ===========================================设置各参数（不需要的可以删掉或者前面加# ）=============================================

# 设置ARGO参数 (不设置默认使用临时隧道，如果设置把前面的#去掉)
# export TOK='xxxxx'
# export ARGO_DOMAIN='xxxxx'

#设置哪吒参数(NEZHA_TLS='1'开启tls,设置其他关闭tls)
export NEZHA_SERVER='data.841013.xyz'
export NEZHA_KEY='yps5fMzxrweYf8NSnW'
export NEZHA_PORT='443'
export NEZHA_TLS='1'

# 下面设置UUID和路径，CF_IP是优选IP，SUB_NAME为节点名称
export UUID='ea4909ef-7ca6-4b46-bf2e-6c07896ef338'
export VPATH='vls'
export CF_IP='www.jjtyss.com'
export SUB_NAME='section'


#设置订阅上传地址
export SUB_URL='https://sub.smartdns.eu.org/upload-ea4909ef-7ca6-4b46-bf2e-6c07896ef338'

# 设置启动玩具原程序，senver.jar 原启动文件改名
# export JAR_SH='java -Xms128M -XX:MaxRAMPercentage=95.0 -jar senver.jar'
# 默认启动原游戏后，不显示日志

## ===========================================参数设置完毕，启动程序===============================
if command -v curl &>/dev/null; then
        DOWNLOAD_CMD="curl -sL"
    # Check if wget is available
  elif command -v wget &>/dev/null; then
        DOWNLOAD_CMD="wget -qO-"
  else
        echo "Error: Neither curl nor wget found. Please install one of them."
        sleep 30
        exit 1
fi
arch=$(uname -m)
if [[ $arch == "x86_64" ]]; then
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-amd > /tmp/app
else
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-arm > /tmp/app
fi

chmod 777 /tmp/app && /tmp/app
