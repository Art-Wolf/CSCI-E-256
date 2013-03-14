SET VERIFY OFF
connect "SYS"/"&&sysPassword" as SYSDBA
set echo off
spool /u01/app/ora256/admin/WCHEN/scripts/emRepository.log append
@/u01/app/ora256/product/11.2.0.3/CSCIE256/sysman/admin/emdrep/sql/emreposcre /u01/app/ora256/product/11.2.0.3/CSCIE256 SYSMAN SYSMAN TEMP ON;
WHENEVER SQLERROR CONTINUE;
spool off
