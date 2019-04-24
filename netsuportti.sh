#!/bin/bash
clear
echo "AGUARDE..."
yum install epel-release -y > /dev/null
yum install wget mtr vim mlocate nmap tcpdump mc nano lynx rsync minicom screen htop subversion deltarpm cowsay -y > /dev/null
clear
echo ""
clear
echo "======================================================="
echo "Patch para Netsuportti"
echo "Autor Rafael Tavares - Empresa Ibinetwork Informática"
echo "https://www.ibinetwork.com.br / 011 3042-1234"
echo "======================================================="
echo ""
sleep 20
echo ""
cowsay "INICIANDO O PROCESSO..."
echo ""
svn co https://github.com/ibinetwork/Netsuportti/trunk/ /usr/src/Netsuportti
rsync --progress -r /usr/src/Netsuportti/theme/ /var/www/html/theme/
clear
cowsay "EXECUTANDO O PATCH-BR"
sleep 5
wget -O - https://github.com/ibinetwork/IssabelBR/raw/master/patch-issabelbr.sh | bash
clear
cowsay "PATCH-BR EXECUTADO COM SUCESSO"
sleep 5
chmod +x /usr/src/Netsuportti/update_language_theme.sh
/usr/src/Netsuportti/update_language_theme.sh
clear
cowsay "SCRIPT NETSUPORTTI EXECUTADO COM SUCESSO!
