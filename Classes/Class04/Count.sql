USE SEDC
GO

SELECT COUNT(*) AS CustomersCount
FROM Customers

SELECT COUNT([Name]) AS [CustomerName]
FROM Customers

SELECT * FROM Products_Test
SELECT COUNT([Weight]) AS [Products Weight]
FROM Products_Test


SELECT COUNT([FirstName]) AS FirstNameCount
FROM Employees -- 100 vkupno iminja so povtoruvanje
SELECT COUNT(DISTINCT [FirstName]) AS FirstNameCount
FROM Employees -- 10 iminja bez povtoruvanje

