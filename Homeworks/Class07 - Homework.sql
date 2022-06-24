USE MYPIZZA_DB

--SELECT * FROM OrderDetails
--SELECT * FROM Orders
--SELECT * FROM Pizzas
--SELECT * FROM PizzaToppings
--SELECT * FROM Toppings
SELECT * FROM Users
SELECT * FROM Roles
SELECT * FROM UserRoles



-- TASK 01
-- Create a stored procedure that when provided an OrderId, can return the full price of a whole order
-- Do not return the Price column from the Orders table (since it is dummy data)
-- Instead calculate the sum of the Price of all pizzas from the Order + All toppings Price that are part of that pizzas





-- TASK 02
-- Create store procedure that will insert new User in the database
-- Make sure to also insert Role of 'Employee' for the newly inserted user
-- Don't forget the UserRoles table :)
-- HINT: Use scope identity :)
CREATE OR ALTER PROCEDURE sp_InsertNewUser
(
	@FirstName nvarchar(100),  
	@LastName nvarchar(100),
	@Address nvarchar(255),
	@Phone nvarchar(50),
	)
AS
BEGIN 
	INSERT INTO Users(FirstName, LastName, [Address], Phone)
	VALUES(@FirstName, @LastName, @Address, @Phone)

	-- SCOPE_IDENTITY() - Returns the last identity value inserted into an identity column in the same scope
	SET @EmployeeID = SCOPE_IDENTITY()
	
	SELECT * 
	FROM Employees 
	WHERE Id = @EmployeeID
END
GO





-- TASK 03
-- Create a view, name it [Most ordered pizzas], that will lists all the 
-- pizzas by the number of times ordered, starting from the most popular one ( Most times ordered )

DROP VIEW IF EXISTS [Most ordered pizzas] 
GO
CREATE  VIEW [Most ordered pizzas]
AS
SELECT p.[Name], COUNT(p.[Name]) AS [TimesOrdered]
FROM OrderDetails od
JOIN Pizzas p ON od.PizzaId = p.Id 
GROUP BY p.Name
GO

SELECT * FROM [Most ordered pizzas]
ORDER BY [TimesOrdered] DESC
GO



-- TASK 04
-- Create stored procedure that will return the most loyal customer (The customer that have most orders)