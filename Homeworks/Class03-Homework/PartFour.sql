USE SEDC
GO

--List all possible combinations of Customer names and Product names that can be ordered from specific customer
SELECT cu.[Name] AS CustomerName, pr.[Name] AS ProductName FROM Customers cu, Products pr
ORDER BY cu.[Name]

SELECT cu.[Name] AS CustomerName, pr.[Name] AS ProductName FROM Customers cu
CROSS JOIN Products pr

--List all Business Entities that has any order 
--ALTER TABLE Orders
--ADD CONSTRAINT FK_BusinessEntityId FOREIGN KEY (BusinessEntityId) REFERENCES BusinessEntities(Id)

SELECT * FROM Orders ord
JOIN BusinessEntities be ON (ord.BusinessEntityId = be.Id)


--List all Entities without orders
SELECT * FROM Orders ord
RIGHT JOIN BusinessEntities be ON (ord.BusinessEntityId = be.Id)
WHERE ord.BusinessEntityId IS NULL


--List all Customers without orders (using Right Join)
SELECT * FROM Orders ord
RIGHT JOIN Customers cu ON (ord.CustomerId = cu.Id)
WHERE ord.CustomerId IS NULL
