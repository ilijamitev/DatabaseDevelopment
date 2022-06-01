USE [SEDC]
GO

DROP TABLE IF EXISTS [dbo].[Products_Test]
GO

CREATE TABLE Products_Test (
	[Id] int IDENTITY(1,1) NOT NULL,
	[Code] nvarchar(50) NULL,
	[Name] nvarchar(100) NULL,
	[Description] nvarchar(max) NULL,
	[Weight] decimal(18, 2) NULL,
	[Price] decimal(18,2) NULL,
	[Cost] decimal(18,2) NULL,
CONSTRAINT [PK_Products_Test] PRIMARY KEY (Id)
)

INSERT INTO Products_Test([Name],Price)
VALUES ('Chocolate bar',100), ('Musli bar',200);
GO

SELECT * FROM Products_Test


-- ***** DEFAULT CONSTRAINT *****

ALTER TABLE Products_Test
ADD CONSTRAINT DF_ProductsTest_Weight
DEFAULT 100 FOR [Weight];
GO

INSERT INTO Products_Test([Name],Price)
VALUES ('Snickers',150), ('Smoki',250)

SELECT * FROM Products_Test


-- ***** CHECK CONSTRAINT *****		

ALTER TABLE Products_Test
ADD CONSTRAINT CHK_ProductsTest_Price
CHECK (Price >= 0);
GO

--INSERT INTO Products_Test([Name],Price)
--VALUES ('Coca-Cola',-10)
--EXCEPTION ==> The INSERT statement conflicted with the CHECK constraint "CHK_ProductsTest_Price". The conflict occurred in database "SEDC", table "dbo.Products_Test", column 'Price'.

INSERT INTO Products_Test([Name],Price)
VALUES ('Coca-Cola',80)

SELECT * FROM Products_Test


-- ***** UNIQUE CONSTRAINT *****					
ALTER TABLE Products_Test
ADD CONSTRAINT UC_ProductsTest_Code
UNIQUE ([Name])
GO
SELECT * FROM Products_Test


