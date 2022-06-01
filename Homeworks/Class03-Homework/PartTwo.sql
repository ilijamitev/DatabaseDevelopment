USE SEDC
GO

--List all BusinessEntity Names and Customer Names in single result set with duplicates
SELECT [Name] AS BusinessAndCustomers FROM BusinessEntities
UNION ALL
SELECT [Name] FROM Customers


--List all regions where some BusinessEntity is based, or some Customer is based. Remove duplicates
SELECT Region AS AllRegions FROM BusinessEntities
UNION 
SELECT RegionName FROM Customers


--List all regions where we have BusinessEntities and Customers in the same time
SELECT Region AS MutualRegions FROM BusinessEntities
INTERSECT
SELECT RegionName FROM Customers
GO
