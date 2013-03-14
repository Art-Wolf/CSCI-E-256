SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool /u01/app/ora256/admin/WCHEN/scripts/xdb_protocol.log append
@/u01/app/ora256/product/11.2.0.3/CSCIE256/rdbms/admin/catqm.sql change_on_install SYSAUX TEMP YES;
connect "SYS"/"&&sysPassword" as SYSDBA
@/u01/app/ora256/product/11.2.0.3/CSCIE256/rdbms/admin/catxdbj.sql;
@/u01/app/ora256/product/11.2.0.3/CSCIE256/rdbms/admin/catrul.sql;
spool off
