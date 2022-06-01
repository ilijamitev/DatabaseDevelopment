USE SEDC
GO

--Change Products table always to insert value 1 in price column if no price is provided on insert
ALTER TABLE Products
ADD CONSTRAINT default_Price
DEFAULT 1 FOR Price
GO
-- just to check ...
--INSERT INTO Products([Name])
--VALUES ('New Product')
--SELECT * FROM Products
--WHERE [Name] = 'New Product'  -- the Price is 1.00
--DELETE FROM Products
--WHERE [Name] = 'New Product'
--GO


--Change Products table to prevent inserting Price that will more than 2x bigger then the cost price
ALTER TABLE Products
ADD CONSTRAINT CHECK_Price
CHECK (Price <= Cost * 2)
GO

--INSERT INTO Products(Price, Cost)   
--VALUES (101, 50)		-- Throws Exception


--Change Products table to guarantee unique names across the products
ALTER TABLE Products
ADD CONSTRAINT UC_Name UNIQUE ([Name])
GO
-- throws error : The CREATE UNIQUE INDEX statement terminated because a duplicate key was found for the object name 'dbo.Products' and the index name 'UQ__Products__737584F6B40D1C81'. The duplicate key value is (Gluten Free). Could not create constraint or index. See previous errors

-- so i have to remove the duplicates first and than add a UNIQUE Constraint 

SELECT Id,[Name] FROM Products
WHERE [Name] = 'Gluten Free'
DELETE FROM Products
WHERE Id = 13;

SELECT Id,[Name] FROM Products
WHERE [Name] = 'Multigrain'
DELETE FROM Products
WHERE Id = 12;

SELECT Id,[Name] FROM Products
ORDER BY Id
GO