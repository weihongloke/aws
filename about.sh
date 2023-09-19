#!/bin/bash

clear
figlet -cf slant "Welcome" | lolcat
figlet -cf slant "Free AutoScript " | lolcat
echo -e "    #====================================================================#" | lolcat
echo -e "    #                  Premium Script By PrinceNewbie                    #" | lolcat
echo -e "    #                                                                    #" | lolcat
echo -e " ████████╗███████╗███╗   ███╗██████╗  █████╗  ██████╗ ███████╗   " | lolcat
echo -e "╚══██╔══╝██╔════╝████╗ ████║██╔══██╗██╔══██╗██╔════╝ ██╔════╝    " | lolcat
echo -e "   ██║   █████╗  ██╔████╔██║██████╔╝███████║██║  ███╗█████╗      " | lolcat
echo -e "   ██║   ██╔══╝  ██║╚██╔╝██║██╔══██╗██╔══██║██║   ██║██╔══╝      " | lolcat
echo -e "   ██║   ███████╗██║ ╚═╝ ██║██║  ██║██║  ██║╚██████╔╝███████╗    " | lolcat
echo -e "   ╚═╝   ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝    " | lolcat
echo -e "    #                                                                    #" | lolcat     
echo -e "                Pres Enter To back Menu or X To Exit "
echo -e "\e[1;34m"
read -p "    Enter choose key : " dua
echo -e "\e[0m"
case $dua in
        *)
        clear
        menu
        exit
        ;;
        X)
        clear
        exit
        ;;
    esac

