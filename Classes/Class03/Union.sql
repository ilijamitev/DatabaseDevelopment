USE SEDC

SELECT * FROM Employees
WHERE FirstName = 'Goran'
ORDER BY LastName 

SELECT * FROM Products

INSERT INTO Products_Test([Name])
VALUES ('Crunchy'),('Granola'),('Regular/soft'),('Gluten Free'),('Multigrain');

SELECT [Name] AS All_Products FROM Products
INTERSECT
SELECT [Name] FROM Products_Test
ORDER BY [Name]


-- EXCEPT
SELECT [Name] AS All_Products FROM Products
EXCEPT
SELECT [Name] FROM Products_Test
ORDER BY [Name]

SELECT [Name] AS All_Products FROM Products_Test
EXCEPT
SELECT [Name] FROM Products
ORDER BY [Name]

--SELECT * FROM Students
-- WHERE AcId IN (SELECT * FROM Academy.....)