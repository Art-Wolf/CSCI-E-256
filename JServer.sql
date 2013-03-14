SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/ora256/admin/WCHEN/scripts/JServer.log append
@/u01/app/ora256/product/11.2.0.3/CSCIE256/javavm/install/initjvm.sql;
@/u01/app/ora256/product/11.2.0.3/CSCIE256/xdk/admin/initxml.sql;
@/u01/app/ora256/product/11.2.0.3/CSCIE256/xdk/admin/xmlja.sql;
@/u01/app/ora256/product/11.2.0.3/CSCIE256/rdbms/admin/catjava.sql;
@/u01/app/ora256/product/11.2.0.3/CSCIE256/rdbms/admin/catexf.sql;
spool off
