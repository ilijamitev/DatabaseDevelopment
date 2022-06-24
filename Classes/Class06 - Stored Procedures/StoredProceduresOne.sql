USE SEDCACADEMY_DB
GO


CREATE OR ALTER PROCEDURE [Students With Gender F]
AS
	SELECT * FROM Student s
	WHERE s.Gender = 'F'
GO
EXEC [Students With Gender F]
GO

PRINT 'Martin'
GO



SELECT * FROM Student
GO  -- ako nema GO go podvlekuva dole CREATE so crveno ...

-- Stored procedure with input patameters
CREATE OR ALTER PROCEDURE sp_printFullName
(
	@firstName nvarchar(50)='Marko',
	@lastName nvarchar(50)='Markovski'
)
AS
BEGIN
	PRINT 'FirstName: ' + @firstName
	PRINT 'LastName: ' + @lastName
	PRINT CONCAT(@firstName, ' ' ,@lastName)
END
GO

EXEC sp_printFullName @firstName = 'Ilija', @lastName = 'Mitev'
GO

DECLARE @ReturnValue nvarchar(100);
EXEC @ReturnValue = sp_printFullName
SELECT @ReturnValue AS [Result]

SELECT GETDATE() AS [Current Date And Time]