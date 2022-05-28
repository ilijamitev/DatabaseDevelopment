USE SEDC
GO

--1. Find all Employees with FirstName = Goran
SELECT * FROM Employees 
WHERE FirstName = 'Goran';

--2. Find all Employees with LastName starting With ‘S’
SELECT * FROM Employees
WHERE LastName LIKE 'S%';

--3. Find all Employees with DateOfBirth greater than ‘01.01.1988’
SELECT * FROM Employees
WHERE DateOfBirth > '1988-01-01';

--4. Find all Male employees
SELECT * FROM Employees
WHERE Gender = 'M';

--5. Find all employees hired in January/1998
SELECT * FROM Employees
WHERE HireDate BETWEEN '1998-01-01' AND '1998-01-31';

--6. Find all Employees with LastName starting With ‘A’ hired in January/1998
SELECT * FROM Employees
WHERE HireDate BETWEEN '1998-01-01' AND '1998-01-31' AND LastName LIKE 'A%';
GO

