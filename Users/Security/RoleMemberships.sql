ALTER ROLE [db_owner] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_owner] ADD MEMBER [testlogin1];


GO
ALTER ROLE [db_accessadmin] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_securityadmin] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_ddladmin] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_backupoperator] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_datareader] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_datareader] ADD MEMBER [publiclogin];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_datawriter] ADD MEMBER [publiclogin];


GO
ALTER ROLE [db_denydatareader] ADD MEMBER [masterlogin];


GO
ALTER ROLE [db_denydatawriter] ADD MEMBER [masterlogin];

