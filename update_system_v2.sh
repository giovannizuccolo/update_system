#!/bin/bash
########################################################################################
# autor: Giovanni Zuccolo                                                              #
# em caso de bugs enviar um email: giovannizuccolo.on@gmail.com                        #
# Programa para atualização de distros debian, ubuntu, Linux mint e outras variações   #
# Dependências: pv, lolcat                                                             #
########################################################################################
#------------------------------------| FUNCIONS |--------------------------------------#
_WRITE() {
    local write="$@"
    echo "$write" | pv -qL 18
    return 0
 
}
#--------------------------------------------------------------------------------------#
#--------------------------------------| MAIN |----------------------------------------#
_WRITE "executando update"
exec sudo apt update | lolcat               # comando update

_WRITE "executando upgrade"
exec sudo apt upgrade -y | lolcat           # comando upgrade

_WRITE "executando dist-update"
exec sudo apt-get dist-upgrade -y | lolcat      # comando dist-upgrade

_WRITE "executando -f install"
exec sudo apt-get -f install | lolcat         # comando f install

_WRITE "executando autoremove"
exec sudo apt-get autoremove -y | lolcat        # comando autoremove

_WRITE "executando autoclean"
exec sudo apt-get autoclean | lolcat          # comando autoclean

echo "Deseja executar o comando full-upgrade? [Y/N]"    # pergunta se deseja o comando full-upgrade
read desejo

if [ "$desejo" = "y" ] || [ "$desejo" = "Y" ]; then
    exec sudo apt full-upgrade -y
else
    echo "o comando não será executado!"
fi

_WRITE "FIM DA ATUALIZAÇÃO"
#-------------------------------------| FINISH |---------------------------------------#