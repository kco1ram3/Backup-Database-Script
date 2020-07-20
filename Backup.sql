USE master

DECLARE @fileName VARCHAR(90);
DECLARE @db_name VARCHAR(20);
DECLARE @fileDate VARCHAR(20);

SET @fileName = 'C:\@DBBackup\'; -- change to the relevant path 
SET @db_name = 'LIMSLive2015_TTCL';     -- change to the relevant database name 
SET @fileDate = REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(20), GETDATE(),120), ' ', '_'), '-', ''), ':', '');
SET @fileName = @fileName + @db_name + '_' + RTRIM(@fileDate) + '.bak';

BACKUP DATABASE @db_name TO DISK = @fileName; 