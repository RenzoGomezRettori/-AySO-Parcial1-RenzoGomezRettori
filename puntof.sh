echo "Mi Ip es: "$(curl -s ifconfig.me) >> Filtro_Avanzado.txt
echo "Mi usuario es: "$(whoami) >> Filtro_Avanzado.txt
echo "El Hash de mi usuario es: "$(sudo cat /etc/shadow | grep vagrant | awk -F ':' '{print $2}') >> Filtro_Avanzado.txt

cat Filtro_Avanzado.txt
Mi Ip es: 190.194.13.62
Mi usuario es: vagrant
El Hash de mi usuario es: $y$j9T$YKDqIFD.esIbEj1zqtfhF1$2BxW2Gvo/GCjKPKWJ75Rb3jADWRLpZ7W9MOZmyB5RX2
