#!/bin/bash
########################################################################################
# autor: Giovanni Zuccolo                                                              #
# em caso de bugs enviar um email para                                                 #
# email: giovannizuccolo.on@gmail.com                                                  #
# Programa para atualização de distrôs debian, ubuntu, Linux mint e outras variações   #
########################################################################################

exec sudo apt update | lolcat
exec sudo apt upgrade -y | lolcat
exec sudo apt update | lolcat
exec sudo apt-get dist-upgrade -y | lolcat
exec sudo apt-get -f install | lolcat
exec sudo apt-get autoremove -y | lolcat
exec sudo apt-get autoclean | lolcat
