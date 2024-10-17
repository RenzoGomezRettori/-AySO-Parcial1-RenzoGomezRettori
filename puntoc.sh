sudo useradd -m -d /home/dev -c 'developer' -s /bin/bash developer1
sudo useradd -m -d /home/dev -c 'tester' -s /bin/bash tester1
sudo useradd -m -d /home/dev1 -c 'devops1' -s /bin/bash devops1
sudo useradd -m -d /home/dev2 -c 'devops2' -s /bin/bash devops2

sudo groupadd grupodevops
sudo groupadd grupodevelopers
sudo groupadd grupotesters

sudo usermod -aG grupodevelopers developer1
sudo usermod -aG grupodevops developer1
sudo usermod -aG grupotesters tester1
sudo usermod -aG grupodevops devops1
sudo usermod -aG grupodevelopers devops1
sudo usermod -aG grupodevops devops2
  
id developer1
id tester1
id devops1
id devops2

sudo chmod -R 750 Examenes-UTN/alumnos_1
sudo chmod -R 760 Examenes-UTN/alumnos_2
sudo chmod -R 700 Examenes-UTN/alumnos_3
sudo chmod -R 775 Examenes-UTN/profesores

whoami > Examenes-UTN/alumnos_1/validad.txt
whoami > Examenes-UTN/alumnos_2/validad.txt
whoami > Examenes-UTN/alumnos_3/validad.txt
whoami > Examenes-UTN/profesores/validad.txt

PERMISOS
drwxr-x--- 5 vagrant vagrant 4096 Oct 17 20:03 alumnos_1/
drwxrw---- 5 vagrant vagrant 4096 Oct 17 20:06 alumnos_2/
drwx------ 5 vagrant vagrant 4096 Oct 17 20:06 alumnos_3/
drwxrwxr-x 2 vagrant vagrant 4096 Oct 17 20:06 profesores/

