CREATE DATABASE SEDC
USE SEDC;

CREATE TABLE BusinessEntity(
Id int NOT NULL PRIMARY KEY,
[Name] nvarchar(100) NULL,
Region nvarchar(1000) NULL,
Zipcode nvarchar(10) NULL,
Size nvarchar(10) NULL,
);

CREATE TABLE Employee(
Id int NOT NULL PRIMARY KEY,
FirstName nvarchar(100) NOT NULL,
LastName nvarchar(100) NOT NULL,
DateOfBirth date NULL,
Gender nchar(1) NULL,
HireDate date NULL,
NationalIdNumber nvarchar(20) NULL,
);

CREATE TABLE Product(
Id int NOT NULL PRIMARY KEY,
Code nvarchar(50) NULL,
[Name] nvarchar(100) NULL,
[Description] nvarchar(MAX) NULL,
[Weight] decimal(18,2) NULL,
Price decimal(18,2) NULL,
Cost decimal(18,2) NULL,  --type money?
);

CREATE TABLE Customer(
Id int NOT NULL PRIMARY KEY,
[Name] nvarchar(100) NOT NULL,
AccountNumber nvarchar(50) NULL,
City nvarchar(100) NULL,
RegionName nvarchar(100) NULL,
CustomerSize nvarchar(10) NULL,
PhoneNumber nvarchar(20) NULL,
isActive bit NOT NULL
);

CREATE TABLE [Order](
Id bigint NOT NULL PRIMARY KEY,
OrderDate datetime NULL,
[Status] smallint NULL,
BusinessEntityId int NULL,
CustomerId int NULL,
EmployeeId int NULL,
TotalPrice decimal(18,2) NULL,
Comment nvarchar(MAX) NULL
);

CREATE TABLE OrderDetails(
Id bigint NOT NULL PRIMARY KEY,
OrderId bigint NULL,
ProductId int NULL,
Quantity int NULL,
Price decimal (18,2) NULL
);

INSERT INTO BusinessEntity(Id,[Name],Region,Zipcode,Size)
VALUES 
(1,'Setek','Skopje','1000', '100'),
(2,'Neptun','Skopje','1000', '100'),
(3,'Anhoch','Skopje','1000', '100')

UPDATE BusinessEntity 
SET Size = '150', Region = 'Veles'
WHERE Id = 2;

UPDATE BusinessEntity 
SET Size = '250'
WHERE Id = 3;

SELECT * FROM BusinessEntity

--ALTER TABLE BusinessEntity
--DROP COLUMN Size

--DROP TABLE BusinessEntity;

