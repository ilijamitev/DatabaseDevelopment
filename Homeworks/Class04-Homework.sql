USE SEDC 
GO

--Calculate the total amount on all orders in the system
SELECT SUM(TotalPrice) AS [All orders total price amount] FROM Orders


--Calculate the total amount per BusinessEntity on all orders in the system
SELECT be.[Name],SUM(ord.TotalPrice) AS [Total Price per Business]  FROM Orders ord
JOIN
BusinessEntities be ON be.Id = ord.BusinessEntityId
GROUP BY be.[Name]


--Calculate the total amount per BusinessEntity on all orders in the system from Customers with ID < 20
SELECT be.[Name],SUM(ord.TotalPrice) AS [Total Price per Business from customers with Id<20]  FROM Orders ord 
JOIN
BusinessEntities be ON be.Id = ord.BusinessEntityId
WHERE CustomerId <20
GROUP BY be.[Name]


--Find the Maximal Order amount, and the Average Order amount per BusinessEntity on all orders in the system
SELECT be.[Name], MAX(ord.TotalPrice) AS  [Maximal Order amount],AVG(ord.TotalPrice) AS [Average Order amount]
FROM Orders ord
JOIN BusinessEntities be ON be.Id = ord.BusinessEntityId
GROUP BY be.[Name]
GO

--HINT: When 'per' is part of the requirement think of grouping the dataset by something!!!