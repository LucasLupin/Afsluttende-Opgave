USE MASTER
GO
if DB_ID('Userdb') IS NOT NULL
    BEGIN
        ALTER DATABASE Userdb SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
        DROP DATABASE Userdb
    END
GO
CREATE DATABASE Userdb
GO

USE Userdb

DROP TABLE IF EXISTS userdetails
CREATE TABLE [dbo].[userdetails](
    [userid] [int] IDENTITY(1,1) NOT NULL,
    [username] [nvarchar](100) NULL,
    [address] [nvarchar](500) NULL,
    [number] [nvarchar](50) NULL,
    [emailid] [nvarchar](50) NULL,
    CONSTRAINT [PK_userdetails] PRIMARY KEY CLUSTERED
    (
        [userid] ASC
    )
)
GO

INSERT INTO userdetails(username,  [address], number, emailid)
VALUES ('John', 'Rønvej 12','22334455', 'john_doe66@gmail.com')

Select * from userdetails