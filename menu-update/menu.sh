#!/bin/bash
if [ "$EUID" -ne 0 ]; then
  echo -e "${rd}Skrip perlu dijalankan sebagai root!${nc}";
  exit 1
fi

clear 
yl='\e[32;1m'
bl='\e[36;1m'
gl='\e[32;1m'
rd='\e[31;1m'
mg='\e[0;95m'
blu='\e[34m'
op='\e[35m'
or='\033[1;33m'
bd='\e[1m'
nc='\e[0m'

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')
	
echo -e  "  ╔════════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║                    ♠  AutoScriptVPN  ♠                     ║" | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╝" | lolcat
echo -e  "  ║                      VPS PANEL INFO" | lolcat
echo -e  "  ║ " | lolcat
echo -e  "  ║    \e[32;1mCPU Model:\e[0m $cname  "
echo -e  "  ║    \e[32;1mNumber Of Cores:\e[0m $cores"
echo -e  "  ║    \e[32;1mCPU Frequency:\e[0m $freq MHz"
echo -e  "  ║    \e[32;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e  "  ║    \e[32;1mSystem Uptime:\e[0m $up"
echo -e  "  ║    \e[32;1mIsp Name:\e[0m $ISP"
echo -e  "  ║    \e[32;1mIp Vps:\e[0m $IPVPS"
echo -e  "  ║    \e[32;1mCity:\e[0m $CITY"
echo -e  "  ║    \e[32;1mTime:\e[0m $WKT"
echo -e  "  ║ " | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║                       ♠ MENU OPTIONS ♠                     ║" | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╝" | lolcat
echo -e  "  ║ " | lolcat
echo -e  "  ║      [ 1 ] =>  >>  >>  SSH & OpenVPN"  | lolcat
echo -e  "  ║      [ 2 ] =>  >>  >>  Panel Wireguard " | lolcat
echo -e  "  ║      [ 3 ] =>  >>  >>  Panel L2TP & PPTP Account" | lolcat
echo -e  "  ║      [ 4 ] =>  >>  >>  Panel SSTP Account" | lolcat
echo -e  "  ║      [ 5 ] =>  >>  >>  Panel SSR & SS Account" | lolcat
echo -e  "  ║      [ 6 ] =>  >>  >>  Panel V2Ray" | lolcat
echo -e  "  ║      [ 7 ] =>  >>  >>  Panel VLess" | lolcat
echo -e  "  ║      [ 8 ] =>  >>  >>  Panel TRojan" | lolcat
echo -e  "  ║      [ 9 ] =>  >>  >>  Panel SYSTEM" | lolcat
echo -e  "  ║ " | lolcat
echo -e  "  ╠════════════════════════════════════════════════════════════╗" | lolcat
echo -e  "  ║               Exit Panel Just Press Enter                  ║" | lolcat
echo -e  "  ╚════════════════════════════════════════════════════════════╝" | lolcat
echo -e  "\e[1;31m"
read -p  "           Select From Options :  " menu
echo -e  "\e[0m"
case $menu in
       1)
	clear
        sssh
	exit
	;;
	2)
	clear
        wgr
	exit
	;;
	3)
	clear
	l2tp
	exit
	;;
	4)
	clear
	sstpp
	exit
	;;
	5)
	clear
	ssssr
	exit
	;;
	6)
	clear
	v2raay
	exit
	;;
	7)
	clear
	vleess
	exit
	;;
	8)
	clear
	trojan
	exit
	;;
	9)
	clear
	system
	exit
	;;
	*)
	sudo -i
	exit
	;;
    esac
