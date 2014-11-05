#!/usr/bin/bash
mysqldump -u polinux -pplnx_bao --add-drop-table bao_polinux > ged/bao_polinux.sql
tar -cf ged.tar ../ged/
gzip ged.tar
echo "debut ftp script"
ftp -s:ftp.dat www.polinux.net
echo "End ftp script"