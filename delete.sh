#!/usr/bin/bash
clear
echo
echo
echo
echo

pkg install pv -y >/dev/null 2>&1
echo -e "\033[32m\033[1m]────────────────────────────────────────────[" |pv -qL 12
echo -e "\033[33m\033[1m   TRABAJANDO EN ELLO, POR FAVOR, TEN PACIENCIA" | pv -qL 12
sleep 1.0
#setup motd
echo > motd
echo '¡Bienvenidos a termux!' >> motd
echo >> motd
echo 'Wiki:            https://wiki.termux.com' >> motd
echo 'Community forum: https://termux.com/community' >> motd
echo 'Gitter chat:     https://gitter.im/termux/termux' >> motd
echo "IRC channel:     #termux on freenode" >> motd
echo >> motd
echo 'Trabajando con pkgs:' >> motd
echo >> motd
echo '* Buscando pkgs:   pkg search <query>' >> motd
echo '* Instalar pkg: pkg install <package>' >>  motd
echo '* Actualizar pkgs:  pkg upgrade' >> motd
echo >> motd
echo 'Suscribirse a repositorios adicionales:' >> motd
echo >> motd
echo '* Root: pkg install root-repo' >> motd
echo '* Unstable: pkg install unstable-repo' >> motd
echo '* X11:      pkg install x11-repo' >> motd
echo >> motd
echo 'Report issues at https://termux.com/issues' >> motd
echo >> motd

#default bash.bashrc
echo "# Ajustes en el historial de comandos:" >> bash.bashrc 
echo '# - Anexar el historial en lugar de sobrescribirlo' >> bash.bashrc
echo '#   cuando sale el shell.' >> bash.bashrc
echo '# - Cuando utilice la sustitución de historial, no' >> bash.bashrc
echo '#   exec inmediatamente.' >> bash.bashrc
echo '# - No guardar en el historial los comandos que se inician' >> bash.bashrc
echo '#   con espacio.' >> bash.bashrc
echo "# - No guarde comandos duplicados." >> bash.bashrc

echo 'shopt -s histappend' >> bash.bashrc
echo 'shopt -s histverify' >> bash.bashrc
echo 'export HISTCONTROL=ignoreboth' >> bash.bashrc

echo '# Símbolo del sistema de línea predeterminado.' >> bash.bashrc
echo 'PROMPT_DIRTRIM=2' >> bash.bashrc
echo "PS1='\[\e[0;32m\]\w\[\e[0m\] \[\e[0;97m\]\$\[\e[0m\] '" >> bash.bashrc

echo '# Handles nonexistent commands.' >> bash.bashrc
echo '# If user has entered command which invokes non-available' >> bash.bashrc
echo '# utility, command-not-found will give a package suggestions.' >> bash.bashrc
echo 'if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then' >> bash.bashrc
echo '	command_not_found_handle() {' >> bash.bashrc
echo '		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"' >> bash.bashrc
echo '	}' >> bash.bashrc
echo 'fi' >> bash.bashrc

echo >> bash.bashrc
sleep 2
echo
mv bash.bashrc /data/data/com.termux/files/usr/etc

cd $HOME
echo
rm -rf termux-login
echo 
cd /sdcard
rm network.py
echo
sleep 0.5
clear
echo
echo
echo -e "\033[33m\033[1m Eliminación exitosa " | pv -qL 7
