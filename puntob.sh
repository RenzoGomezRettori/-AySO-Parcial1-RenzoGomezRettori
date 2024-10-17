 sudo fdisk /dev/sdc

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1):
First sector (2048-20971519, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-20971519, default 20971519): +2.5G

Created a new partition 1 of type 'Linux' and of size 2.5 GiB.

Command (m for help): p
Disk /dev/sdc: 10 GiB, 10737418240 bytes, 20971520 sectors

Command (m for help): n
Partition type
   p   primary (1 primary, 0 extended, 3 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (2-4, default 2):
First sector (5244928-20971519, default 5244928):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (5244928-20971519, default 20971519): +2.5G

Created a new partition 2 of type 'Linux' and of size 2.5 GiB.

Command (m for help): p
Disk /dev/sdc: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc0a30a10

Device     Boot   Start      End Sectors  Size Id Type
/dev/sdc1          2048  5244927 5242880  2.5G 83 Linux
/dev/sdc2       5244928 10487807 5242880  2.5G 83 Linux

Command (m for help): p
Disk /dev/sdc: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc0a30a10

Device     Boot    Start      End Sectors  Size Id Type
/dev/sdc1           2048  5244927 5242880  2.5G 83 Linux
/dev/sdc2        5244928 10487807 5242880  2.5G 83 Linux
/dev/sdc3       10487808 15730687 5242880  2.5G 83 Linux

Command (m for help): n
Partition type
   p   primary (3 primary, 0 extended, 1 free)
   e   extended (container for logical partitions)
Select (default e): e

Selected partition 4
First sector (15730688-20971519, default 15730688):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (15730688-20971519, default 20971519): +2.3G

Created a new partition 4 of type 'Extended' and of size 2.3 GiB.

Command (m for help): p
Disk /dev/sdc: 10 GiB, 10737418240 bytes, 20971520 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0xc0a30a10

Device     Boot    Start      End Sectors  Size Id Type
/dev/sdc1           2048  5244927 5242880  2.5G 83 Linux
/dev/sdc2        5244928 10487807 5242880  2.5G 83 Linux
/dev/sdc3       10487808 15730687 5242880  2.5G 83 Linux
/dev/sdc4       15730688 20623359 4892672  2.3G  5 Extended

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.


sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc4

sudo mkfir /mnt/sdc1
sudo mount /dev/sdc1 /mnt/sdc1/
sudo mkdir /mnt/sdc2
sudo mount /dev/sdc2 /mnt/sdc2/
sudo mkdir /mnt/sdc3
sudo mount /dev/sdc3 /mnt/sdc3/
sudo mkdir /mnt/sdc4
sudo mount /dev/sdc4 /mnt/sdc4/

