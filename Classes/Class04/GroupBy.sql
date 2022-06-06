USE SEDC 
GO

-- SE STO SELEKTIRAME KAJ SELECT MORA DA GO STAVIME I VO GROUP BY


SELECT Gender, FirstName, COUNT(*)  AS [Number of Employees] FROM Employees
GROUP BY Gender, FirstName

SELECT Size, COUNT(*) AS [Size count] 
FROM BusinessEntities
GROUP BY Size
HAVING Size <> 'Large'

SELECT Cost, COUNT(*) AS [Cost Count]
FROM Products
GROUP BY Cost

SELECT [Name],COUNT(*) AS [Count by name containing Soy]
FROM Products
GROUP BY [Name] HAVING [Name] LIKE '%soy%'

