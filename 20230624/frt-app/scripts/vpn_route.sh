#!/bin/bash

## 使い方
#
# L2TP VPNを接続後
# $ sudo ./vpn_route.sh
# add net 120.52.22.96: gateway 192.168.100.1
# ... と表示される

## 動作確認
# $ netstat -nr
# を実行し、次のように設定されて入ればOK
# 3.10.17.128/25     192.168.100.1      UGSc             ppp0       
# ...

## jq が必要なので入っていない人は次のコマンドなどでインストールする。
# $ brew install jq

## ここを修正したら、Split Tunnelにも登録するために、右のURLと共に、dxe-labの管理者に依頼すること (dxe-lab管理者用設定手順メモ: https://dxe-lab.app.box.com/file/923827136412 )
# docs.7andi-digital.com
CONFLUENCE_IP=13.114.79.155/32
# task.7andi-digital.com
JIRA_IP=54.168.102.201/32
# gitlab.vps07.lightcafe.co.jp
GITLAB_IP=157.7.142.107/32
VNC_IP=35.75.196.139/32
VPN_ROUTE=192.168.100.1
CLOUDFRONT_IP_LIST=$(curl --silent https://d7uri8nf7uskq.cloudfront.net/tools/list-cloudfront-ips)

# CLOUDFRONT_IP_LIST='{"CLOUDFRONT_GLOBAL_IP_LIST": ["120.52.22.96/27", "205.251.249.0/24", "180.163.57.128/26", "204.246.168.0/22", "18.160.0.0/15", "205.251.252.0/23", "54.192.0.0/16", "204.246.173.0/24", "54.230.200.0/21", "120.253.240.192/26", "116.129.226.128/26", "130.176.0.0/17", "108.156.0.0/14", "99.86.0.0/16", "205.251.200.0/21", "223.71.71.128/25", "13.32.0.0/15", "120.253.245.128/26", "13.224.0.0/14", "70.132.0.0/18", "15.158.0.0/16", "13.249.0.0/16", "18.238.0.0/15", "18.244.0.0/15", "205.251.208.0/20", "65.9.128.0/18", "130.176.128.0/18", "58.254.138.0/25", "54.230.208.0/20", "116.129.226.0/25", "52.222.128.0/17", "18.164.0.0/15", "64.252.128.0/18", "205.251.254.0/24", "54.230.224.0/19", "71.152.0.0/17", "216.137.32.0/19", "204.246.172.0/24", "18.172.0.0/15", "120.52.39.128/27", "118.193.97.64/26", "223.71.71.96/27", "18.154.0.0/15", "54.240.128.0/18", "205.251.250.0/23", "180.163.57.0/25", "52.46.0.0/18", "223.71.11.0/27", "52.82.128.0/19", "54.230.0.0/17", "54.230.128.0/18", "54.239.128.0/18", "130.176.224.0/20", "36.103.232.128/26", "52.84.0.0/15", "143.204.0.0/16", "144.220.0.0/16", "120.52.153.192/26", "119.147.182.0/25", "120.232.236.0/25", "54.182.0.0/16", "58.254.138.128/26", "120.253.245.192/27", "54.239.192.0/19", "18.64.0.0/14", "120.52.12.64/26", "99.84.0.0/16", "130.176.192.0/19", "52.124.128.0/17", "204.246.164.0/22", "13.35.0.0/16", "204.246.174.0/23", "36.103.232.0/25", "119.147.182.128/26", "118.193.97.128/25", "120.232.236.128/26", "204.246.176.0/20", "65.8.0.0/16", "65.9.0.0/17", "108.138.0.0/15", "120.253.241.160/27", "64.252.64.0/18"], "CLOUDFRONT_REGIONAL_EDGE_IP_LIST": ["13.113.196.64/26", "13.113.203.0/24", "52.199.127.192/26", "13.124.199.0/24", "3.35.130.128/25", "52.78.247.128/26", "13.233.177.192/26", "15.207.13.128/25", "15.207.213.128/25", "52.66.194.128/26", "13.228.69.0/24", "52.220.191.0/26", "13.210.67.128/26", "13.54.63.128/26", "99.79.169.0/24", "18.192.142.0/23", "35.158.136.0/24", "52.57.254.0/24", "13.48.32.0/24", "18.200.212.0/23", "52.212.248.0/26", "3.10.17.128/25", "3.11.53.0/24", "52.56.127.0/25", "15.188.184.0/24", "52.47.139.0/24", "18.229.220.192/26", "54.233.255.128/26", "3.231.2.0/25", "3.234.232.224/27", "3.236.169.192/26", "3.236.48.0/23", "34.195.252.0/24", "34.226.14.0/24", "13.59.250.0/26", "18.216.170.128/25", "3.128.93.0/24", "3.134.215.0/24", "52.15.127.128/26", "3.101.158.0/23", "52.52.191.128/26", "34.216.51.0/25", "34.223.12.224/27", "34.223.80.192/26", "35.162.63.192/26", "35.167.191.128/26", "44.227.178.0/24", "44.234.108.128/25", "44.234.90.252/30"]}'

## ここを修正したら、Split Tunnelにも登録するために、右のURLと共に、dxe-labの管理者に依頼すること (dxe-lab管理者用設定手順メモ: https://dxe-lab.app.box.com/file/923827136412 )
FQDN_ARRAY=( \
\
github.7andi-digital.com \
7andi-digital.atlassian.net \
\
www.iy-net.jp \
mobile.iy-net.jp \
api.iy-net.jp \
pre-www.iy-net.jp \
pre-mobile.iy-net.jp \
pre-api.iy-net.jp \
\
www.stg1.iy-net.biz \
mobile.stg1.iy-net.biz \
api.stg1.iy-net.biz \
www.stg2.iy-net.biz \
mobile.stg2.iy-net.biz \
api.stg2.iy-net.biz \
www.stg3.iy-net.biz \
mobile.stg3.iy-net.biz \
api.stg3.iy-net.biz \
www.stg4.iy-net.biz \
mobile.stg4.iy-net.biz \
api.stg4.iy-net.biz \
\
www.dev.iy-net.biz \
mobile.dev.iy-net.biz \
api.dev.iy-net.biz \
\
www.iyns.dxe-lab.com \
mobile.iyns.dxe-lab.com \
api.iyns.dxe-lab.com \
\
lab-www.iyns.dxe-lab.com \
lab-mobile.iyns.dxe-lab.com \
lab-api.iyns.dxe-lab.com \
\
stg1-api.iy-net.jp \
stg1-www.iy-net.jp \
auth.7id.st-omni7.jp \
auth2.7id.st-omni7.jp \
auth3.7id.st-omni7.jp \
auth4.7id.st-omni7.jp \
auth5.7id.st-omni7.jp \
auth6.7id.st-omni7.jp \
account.7id.st-omni7.jp \
account2.7id.st-omni7.jp \
account3.7id.st-omni7.jp \
account4.7id.st-omni7.jp \
account5.7id.st-omni7.jp \
account6.7id.st-omni7.jp \
\
www.frt.dev.iy-net.biz \
\
# nanaco
nanaco.st2.st-omni7.jp \
nanaco.st3.st-omni7.jp \
nanaco.st4.st-omni7.jp \
# nanaco会員メニュー
www.dev3.nanaco-net.jp \
# omni7
www.st2.st-omni7.jp \
www.st4.st-omni7.jp \
www.st6.st-omni7.jp \
# マイル
mp1.7mp.st1.st-omni7.jp \
mp10.7mp.st1.st-omni7.jp \
\
app.frt.dev.iy-net.biz \
app.stg1.iy-net.biz \
app.stg2.iy-net.biz \
app.stg3.iy-net.biz \
app.stg4.iy-net.biz \
app.iy-net.jp \
\
)

ip_array=$(echo $CLOUDFRONT_IP_LIST | jq -r '.[][]')
ip_array+=( $CONFLUENCE_IP $JIRA_IP $GITLAB_IP $VNC_IP )
for fqdn in ${FQDN_ARRAY[@]}; do
    ips=$(dig +short +noedns $fqdn)
    for ip in $ips; do
        if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
            ip_array+=( $ip/32 )
        fi
    done
done
uniq_ip_array=$(printf "%s\n" "${ip_array[@]}" | sort -u)

delete_route() {
    route delete -net $1 > /dev/null 2>&1
}

add_route() {
    route add -net $1 $VPN_ROUTE
}

for ip in $uniq_ip_array; do
    echo $ip
    delete_route $ip
    add_route $ip
done

