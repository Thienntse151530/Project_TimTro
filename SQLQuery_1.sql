USE master
GO
CREATE DATABASE Project_NhaTro_PRM
GO
USE Project_NhaTro_PRM
GO

CREATE TABLE User
(
    Id_User         INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    FullName        NVARCHAR(100)   NOT NULL,
    Student_Code    VARCHAR(50)     NOT NULL,
    Identification  VARCHAR(15)     NOT NULL,
    Account         VARCHAR(150)    NOT NULL,
    [Password]      NVARCHAR(50)    NOT NULL
)

CREATE TABLE NhaTro 
(
    Id_NhaTro       INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    Name_NhaTro     NVARCHAR(100)   NOT NULL,
    Address_NhaTro  NVARCHAR(200)   NOT NULL,
    Manager_NhaTro  NVARCHAR(100)   NOT NULL,
    Total_TypeRoom  INT             NOT NULL,
    Total_Room      INT             NOT NULL
)
CREATE TABLE TypeRoom 
(
    Id_TypeRoom     INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    Id_NhaTro       INT             NOT NULL,
    Name_TypeRoom   NVARCHAR(100)   NOT NULL,
    Capacity_Room   INT             NOT NULL,
    Price           INT             NOT NULL,
    FOREIGN KEY (Id_NhaTro) REFERENCES NhaTro(Id_NhaTro)
)
CREATE TABLE Room 
(
    Id_Room         INT             NOT NULL    IDENTITY(1,1)   PRIMARY KEY,
    Id_TypeRoom     INT             NOT NULL,
    Name_Room       NVARCHAR(100)   NOT NULL,
    [Status]        INT             NOT NULL,
    FOREIGN KEY (Id_TypeRoom) REFERENCES TypeRoom(Id_TypeRoom)
)