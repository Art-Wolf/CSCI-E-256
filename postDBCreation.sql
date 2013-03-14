SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
spool //home/courses/w/c/wchen/admin/WCHEN/scripts/postDBCreation.log append
@/u01/app/ora256/product/11.2.0.3/CSCIE256/rdbms/admin/catbundle.sql psu apply;
select 'utl_recomp_begin: ' || to_char(sysdate, 'HH:MI:SS') from dual;
execute utl_recomp.recomp_serial();
select 'utl_recomp_end: ' || to_char(sysdate, 'HH:MI:SS') from dual;
connect "SYS"/"&&sysPassword" as SYSDBA
set echo on
create spfile='/u01/app/ora256/product/11.2.0.3/CSCIE256/dbs/spfileWCHEN.ora' FROM pfile='/home/courses/w/c/wchen/admin/WCHEN/scripts/init.ora';
shutdown immediate;
connect "SYS"/"&&sysPassword" as SYSDBA
startup ;
spool off
