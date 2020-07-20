@echo off
cd C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008R2EXPRESS\MSSQL\Binn\
sqlcmd.exe -S LIMSSERVER\SQL2008R2EXPRESS -U sa -P DAP2Vinachem -i "C:\Backup.sql" 