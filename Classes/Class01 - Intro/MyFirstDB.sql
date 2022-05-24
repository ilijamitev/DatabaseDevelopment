-- Ako sakame da excute samo del od kodot da go selektirame i Execute gore 
-- Ako dade error da odime windows Services i da vidime SQL servisot....

CREATE DATABASE MyFirstDB;
USE MyFirstDB

CREATE TABLE Students(
Id int NOT NULL,
FirstName nvarchar(100) NOT NULL,
--LastName nvarchar NOT NULL,  DA VNIMAVAME DA NE IZOSTAVIME ZAGRADI
LastName nvarchar(100) NOT NULL,
Age tinyint NULL
)

INSERT INTO Students (Id, FirstName, LastName,Age)
VALUES 
(1,'Ilija','Mitev',26),
(2,'Kiko','Kiko',26)

SELECT * FROM Students 
