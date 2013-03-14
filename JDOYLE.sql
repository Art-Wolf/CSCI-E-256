set verify off
ACCEPT sysPassword CHAR PROMPT 'Enter new password for SYS: ' HIDE
ACCEPT systemPassword CHAR PROMPT 'Enter new password for SYSTEM: ' HIDE
host /u01/app/ora256/product/11.2.0.3/CSCIE256/bin/orapwd file=/u01/app/ora256/product/11.2.0.3/CSCIE256/dbs/orapwWCHEN force=y
@/home/courses/w/c/wchen/admin/WCHEN/scripts/CreateDB.sql
@/home/courses/w/c/wchen/admin/WCHEN/scripts/CreateDBFiles.sql
@/home/courses/w/c/wchen/admin/WCHEN/scripts/CreateDBCatalog.sql
--@/u01/app/ora256/admin/WCHEN/scripts/JServer.sql
--@/u01/app/ora256/admin/WCHEN/scripts/xdb_protocol.sql
--@/u01/app/ora256/admin/WCHEN/scripts/emRepository.sql
@/home/courses/w/c/wchen/admin/WCHEN/scripts/lockAccount.sql
@/home/courses/w/c/wchen/admin/WCHEN/scripts/postDBCreation.sql
