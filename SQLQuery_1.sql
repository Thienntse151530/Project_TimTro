USE master
GO
CREATE DATABASE Project_NhaTro_PRM
GO
USE Project_NhaTro_PRM
GO

CREATE TABLE User
(
    Id_User         INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    FullName        NVARCHAR(100),
    Student_Code    VARCHAR(50),
    Identification  VARCHAR(15),
    Account         VARCHAR(150),
    [Password]      NVARCHAR(50)
)

CREATE TABLE NhaTro 
(
    Id_NhaTro       INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    Name_NhaTro     NVARCHAR(100),
    Address_NhaTro  NVARCHAR(200),
    Manager_NhaTro  NVARCHAR(100),
    Total_TypeRoom  INT,
    Total_Room      INT
)
CREATE TABLE TypeRoom 
(
    Id_TypeRoom     INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    Name_TypeRoom   NVARCHAR(100),
    Capacity_Room   INT,
    Price           INT  
)
CREATE TABLE Room 
(
    Id_Room         INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    Name_Room       NVARCHAR(100),
    [Status]        INT
)