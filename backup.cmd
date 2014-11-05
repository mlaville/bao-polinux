#!/usr/bin/bash
mysqldump -u {user} -p{pass} --add-drop-table bao_polinux > ged/bao_polinux.sql
tar -cf ged.tar ged/
gzip ged.tar
echo "debut ftp script"
lftp -f ftp.cmd
echo "End ftp script"
