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

draw_line() {
    local cols=$(tput cols)
    local line=""
    for ((i = 0; i < cols; i++)); do
        line+="="
    done
    echo "$line"
}
#--------------------------------------------------------------------------------------#

#--------------------------------------| MAIN |----------------------------------------#
clear
draw_line

tput setaf 1
_WRITE "$(tput bold smul) executando update $(tput sgr0)"
exec sudo apt update 2>/dev/null | lolcat               # comando update
tput sgr0
#clear

tput setaf 1
_WRITE "$(tput bold smul) executando upgrade $(tput sgr0)"
exec sudo apt upgrade -y 2>/dev/null | lolcat           # comando upgrade
tput sgr0
#clear

tput setaf 1
_WRITE "$(tput bold smul) executando dist-update $(tput sgr0)"
exec sudo apt-get dist-upgrade -y 2>/dev/null | lolcat      # comando dist-upgrade
tput sgr0
#clear

tput setaf 1
_WRITE "$(tput bold smul) executando -f install $(tput sgr0)"
exec sudo apt-get -f install 2>/dev/null | lolcat         # comando f install
tput sgr0
#clear

tput setaf 1
_WRITE "$(tput bold smul) executando autoremove $(tput sgr0)"
exec sudo apt-get autoremove -y 2>/dev/null | lolcat        # comando autoremove
tput sgr0
#clear

tput setaf 1
_WRITE "$(tput bold smul) executando autoclean $(tput sgr0)"
exec sudo apt-get autoclean 2>/dev/null | lolcat          # comando autoclean
tput sgr0
#clear

tput setaf 1
_WRITE "$(tput bold smul) Deseja executar o comando full-upgrade? [Y/N] $(tput sgr0)"; read desejo   # pergunta se deseja o comando full-upgrade
tput sgr0
# read desejo

if [ "$desejo" = "y" ] || [ "$desejo" = "Y" ]; then
    exec sudo apt full-upgrade -y 2>/dev/null | lolcat
else
    tput setaf 2
	echo "o comando não será executado!"
	tput sgr0
fi
#clear
tput setaf "14"
_WRITE "FIM DA ATUALIZAÇÃO"
tput sgr0
draw_line
#-------------------------------------| FINISH |---------------------------------------#
