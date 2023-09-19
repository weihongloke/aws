#!/bin/bash

IP=$(wget -qO- icanhazip.com);
domain=$(cat /etc/v2ray/domain);

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass="1"


echo "AutoCreate SSH and OpenVPN account script by Wei Hong Loke"
sleep 3
echo Ping Host
echo Checking Access Rights...
sleep 0.5
echo Permission Accepted
clear
sleep 0.5
echo Create Acocunt: $Login
sleep 0.5
echo Set Password: $Pass
sleep 0.5
clear
useradd -e `date -d "$masaaktif days" +"%Y-%m-%d"` -s /bin/false -M $Login
exp="$(chage -l $Login | grep "Account expires" | awk -F": " '{print $2}')"
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "SSH & OpenVPN 1 Day Trial Info"
echo -e "SSH & OpenVPN Account Info"
echo -e "Username          : $Login "
echo -e "Password          : $Pass"
echo -e "==============================="
echo -e "IP Server         : $IP"
echo -e "Host              : $domain"
echo -e "OpenSSH           : 22, 500, 40000"
echo -e "Dropbear          : 143, 109, 50000"
echo -e "SSH WS Python     : 100, 2021 , 2020"
echo -e "SSH WS Python SSL : 2052, 2053 "
echo -e "SSL/TLS           : 443, 777"
echo -e "Port Squid        : 3128, 8080 (limit to IP SSH)" 
echo -e "OpenVPN           : TCP 1194 http://$IP:81/client-tcp-1194.ovpn"
echo -e "OpenVPN           : UDP 2200 http://$IP:81/client-udp-2200.ovpn"
echo -e "OpenVPN           : SSL 992 http://$IP:81/client-tcp-ssl.ovpn"
echo -e "badvpn            : 7100, 7200, 7300"
echo -e "==============================="
echo -e "Payload Websocket : GET / HTTP/1.1[crlf]Host: $domain[crlf]Upgrade: websocket[crlf][crlf]"
echo -e "==============================="
echo -e "Active Until   : $exp"
echo -e "Script by @weihongloke"
