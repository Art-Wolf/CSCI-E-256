#!/bin/sh

OLD_UMASK=`umask`
#
# normally, you should set umask=0027. but for the class, you have to set it to 000 (read and write for everyone)
#
umask 000
mkdir -p /u01/app/ora256/admin/WCHEN/adump
mkdir -p /u01/app/ora256/admin/WCHEN/dpdump
mkdir -p /u01/app/ora256/admin/WCHEN/pfile
mkdir -p /u01/app/ora256/cfgtoollogs/dbca/WCHEN
mkdir -p /u01/app/ora256/fast_recovery_area
mkdir -p /u01/app/ora256/fast_recovery_area/WCHEN
mkdir -p /u01/app/ora256/product/11.2.0.3/CSCIE256/dbs
mkdir -p /u01/oradata/WCHEN
umask ${OLD_UMASK}
ORACLE_SID=WCHEN; export ORACLE_SID
PATH=$ORACLE_HOME/bin:$PATH; export PATH
echo You should Add this entry in the /var/opt/oracle/oratab: WCHEN:/u01/app/ora256/product/11.2.0.3/CSCIE256:Y
/u01/app/ora256/product/11.2.0.3/CSCIE256/bin/sqlplus /nolog @$HOME/admin/WCHEN/scripts/WCHEN.sql
