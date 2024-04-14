#!/usr/bin/bash 

bash banner.sh
echo

read -p $'\e[1;32m  Ingresa \033[33mNombre \033[37mpara \033[32mentrar :\e[0m ' Nombre                
read -p $'\e[1;32m  Ingresa \033[33mContra \033[37mpara \033[32mentrar :\e[0m ' Contra
echo
echo
read -p $'\033[1m\033[32m   Tu \033[0mNick \033[38;5;209mName \033[31m  : \033[33m\033[1m ' nick
cd                                                   
cd ..                                               
cd usr/etc                                       
rm motd                                           
rm bash.bashrc                                       
cat <<LOGIN>bash.bashrc                            

trap '' 2                                          
echo -e "\e[1;32m
              ▄▀▀▀▄
            ──█───█───────────────
           \033[33mInicie sesión para continuar\033[32m
	    ─███████─────────▄▀▀▄─
            ░██─▀─██░░█▀█▀▀▀▀█░░█░
            ░███▄███░░▀░▀░░░░░▀▀░░

\033[31m           ────────────────────────────
\033[33m           Inicie sesión con sus \033[32mCredenciales 
\033[31m           ────────────────────────────
\e[0m"
echo
termux-tts-speak Ingresa tu nombre.
read -p $'       \e[33m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mUSERNAME :\033[32m ' user
termux-tts-speak Ingresa tu contra.
read -s -p $'       \e[32m\033[1m\033[33m[\033[31m+\033[33m] \033[37mINPUT \033[33mPASSWORD :\033[33m ' pass                                                
if [[ \$pass == $Contra && \$user == $Nombre ]]; then
sleep 3
clear
cd $HOME
cd termux-login
cd Song
python sound_effect.py
clear
cd $HOME 
echo -e "\033[1m\033[33m


██████╗░███████╗████████╗░█████╗░
██╔══██╗██╔════╝╚══██╔══╝██╔══██╗
██████╦╝█████╗░░░░░██║░░░██║░░██║
██╔══██╗██╔══╝░░░░░██║░░░██║░░██║
██████╦╝███████╗░░░██║░░░╚█████╔╝
╚═════╝░╚══════╝░░░╚═╝░░░░╚════╝░
"
echo -e  "     \e[1m\e[32m▂▃▄▅▆▇▓▒░ \033[1mCoded By \e[33mbeto \e[1m\e[32m░▒▓▇▆▅▄▃▂" | pv -qL 25
cd /sdcard
python network.py
echo -e "   \033[1m\033[33m]\033[31m─────────────────────────────────────\033[33m[" | pv -qL 25
echo 
PS1='\033[1m\[\e[32m\]\033[1m┌─[\[\e[37m\]\T\[\e[32m\]\033[1m]─────\033[1m\e[1;98m\[[\033[1m\033[37m$names\033[32m]\033[1m\e[0;32m\033[1m───[\033[38;5;209m\#\033[32m]\n|\n\033[1m\e[0;32m\033[1m└─[\[\e[32m\]\e[1;33m\W\[\e[1m\033[32m]\033[1m────►\e[1;93m\033[1m '
termux-tts-speak sesión con éxito. Bienvenido $username.

<< comment
shopt -s autocd
shopt -s cdspell
shopt -s checkhash
shopt -s checkwinsize
shopt -s compat31
shopt -s compat32
shopt -s compat40
shopt -s compat41
shopt -s no_empty_cmd_completion
shopt -s histverify
shopt -s histappend
shopt -s dirspell
shopt -s direxpand
shopt -s compat43
shopt -s compat32
shopt -s lithist
comment
cd $HOME
cd termux-login
cd
else
echo ""
echo -e "\e[1;31m  ¡Su contraseña es incorrecta! <)
\e[0m"
termux-tts-speak Su termux está bloqueado, vuelva a iniciar sesión. 
sleep 0.2
cmatrix -L 

fi 
trap 2
LOGIN
echo 
echo
echo 
echo -e "\033[1m\e[1;32m     Tu Termux esta \033[33mListo \n
       Así que, por favor, \033[31mSal \033[37my \033[32mInicia sesión.\e[0m"
echo
echo

