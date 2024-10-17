cat /proc/meminfo
cat /proc/meminfo | grep MemTotal
cat /proc/meminfo | grep MemTotal > Filtro_Basico.txt
sudo dmidecode  -t chassis | grep Manu >> Filtro_Basico.txt
