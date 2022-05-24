CREATE DATABASE SEDCACADEMYDB;
USE SEDCACADEMYDB;

CREATE TABLE Students (
Id int NOT NULL PRIMARY KEY,
FirsName nvarchar(100) NULL,
LastName nvarchar(100) NULL,
DateOfBirth date NULL,
EnrolledDate date NULL,
Gender nchar NULL,
NationalIdNumber bigint NULL,
StudentCardNumber int NULL
);

CREATE TABLE Teachers (
Id int NOT NULL PRIMARY KEY,
FirsName nvarchar(100) NULL,
LastName nvarchar(100) NULL,
DateOfBirth date NULL,
AcademicRank nvarchar(100) NULL,
HireDate date NULL
);

CREATE TABLE Grades (
Id int NOT NULL PRIMARY KEY,
StudentId int NULL,
CourseId int NULL,
TeacherId int NULL,
Grade tinyint NULL,
Comment nvarchar(MAX) NULL,
CreatedDate date NULL
);

CREATE TABLE Courses (
Id int NOT NULL PRIMARY KEY,
[Name] nvarchar(MAX) NULL,
Credit tinyint NULL,
AcademicYear date NULL,
Semester tinyint NULL
);

CREATE TABLE AchievementTypes (
Id int NOT NULL PRIMARY KEY,
[Name] nvarchar(150) NULL,
[Description] nvarchar(MAX) NULL,
ParticipationRate decimal(3,2) NULL,
);

CREATE TABLE GradeDetails (
Id int NOT NULL PRIMARY KEY,
GradeId int NULL ,
AchievementTypeId int NULL,
AchievementPoints smallint NULL,
AchievementMaxPoints smallint NULL,
AchievementDate date NULL
);

INSERT INTO Students(Id,FirsName,LastName,Gender)
VALUES 
(1,'Ilija', 'Mitev', 'M'),
(2,'Pink', 'Panther', 'M');

SELECT * FROM Students
--DROP TABLE Students