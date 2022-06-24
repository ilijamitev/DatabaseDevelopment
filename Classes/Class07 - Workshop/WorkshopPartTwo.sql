USE MYPIZZA_DB 
GO

CREATE OR ALTER FUNCTION GetUserFullName(@firstName NVARCHAR(255), @lastName NVARCHAR(255))
RETURNS NVARCHAR(255)
AS
BEGIN
  RETURN @firstName + ' ' + @lastName
END;
GO

SELECT [dbo].GetUserFullName('Ilija', 'Mitev') AS [User Ilija Full Name]
GO
SELECT [dbo].GetUserFullName(u.FirstName, u.LastName) AS [Users Full Names] FROM Users u
GO


DROP VIEW IF EXISTS [Pizza Not Delivered] 
GO
CREATE  VIEW [Pizza Not Delivered]
AS
SELECT p.Name, dbo.GetUserFullName(u.FirstName,u.LastName) AS [Full Name]
FROM Pizzas p
JOIN OrderDetails od ON od.PizzaId = p.Id 
JOIN Orders o ON od.OrderId= o.Id 
JOIN Users u ON o.UserId= u.Id
WHERE o.IsDelivered = 0
GO

SELECT * FROM [Pizza Not Delivered]

SELECT * FROM Orders


CREATE OR ALTER PROCEDURE [Insert New Pizza in Db]
(
	@Name NVARCHAR(100) NOT NULL,
	@SizeId SMALLINT NOT NULL,
	@Price DECIMAL(5, 2) NOT NULL
	@PizzaId int OUT
)
AS
BEGIN
INSERT INTO Pizzas(Name,SizeId,Price)
VALUES (@Name,@SizeId,@Price)
SET @PizzaId = SCOPE_IDENTITY()
SELECT * 
FROM Pizzas p
WHERE p.Id = @PizzaId
END
GO

DECLARE @PizzaIdOUT int 
exec dbo.[Insert New Pizza in Db]
