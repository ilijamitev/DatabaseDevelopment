USE SEDC
GO

-- SUM

SELECT SUM(Price) AS [Total product price]
FROM Products

SELECT SUM([Weight]) AS [Total product weight]
FROM Products_Test


-- MIN & MAX

SELECT MAX(TotalPrice) AS [TotalPriceMax]
FROM Orders

SELECT MIN(TotalPrice) AS [TotalPriceMin]
FROM Orders

SELECT MIN(TotalPrice) AS [TotalPriceMin]
FROM Orders
WHERE TotalPrice > 0

SELECT MIN([FirstName]) AS FirstNameMin -- PO AZBUCEN RED
FROM Employees
SELECT MAX([FirstName]) AS FirstNameMax -- PO AZBUCEN RED
FROM Employees


-- AVERAGE + ROUND

SELECT ROUND(AVG(Price), 3) AS AverageProductPrice 
FROM Products

SELECT AVG(TotalPrice) AS AverageOrderPrice
FROM Orders

-- moze i AVG(DISTINCT Age)

