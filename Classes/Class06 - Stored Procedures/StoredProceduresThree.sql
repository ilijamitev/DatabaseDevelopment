USE SEDC
GO

CREATE OR ALTER PROCEDURE sp_InsertEmployee
(
@FirstName nvarchar(100),
@LastName nvarchar(100),
@DoB date = NULL,
@Gender nchar(1) = NULL,
@HireDate date = NULL,
@NationalIdNumber nvarchar(20) = NULL,
@EmployeeID int OUT
)
AS
BEGIN
	INSERT INTO Employees(FirstName,LastName,DateOfBirth,Gender,HireDate,NationalIdNumber)
	VALUES (@FirstName,@LastName,@DoB,@Gender,@HireDate,@NationalIdNumber)
	
	-- SCOPE_IDENTITY() returns the last identity value inserted into and identity column in the sam scope
	SET @EmployeeID = SCOPE_IDENTITY()
	PRINT @EmployeeID
	SELECT * FROM Employees WHERE Id = @EmployeeID
END
GO

DECLARE @ReturnValue int, @EmployeeIdOUT int
EXEC @ReturnValue = dbo.sp_InsertEmployee 
					@FirstName = 'Hristijan', 
					@LastName= 'Tasevski',
					@DoB = '1992-10-01',
					@Gender = 'M',
					@HireDate = '2016-03-02',
					@NationalIdNumber = '234234234234',
					@EmployeeID = @EmployeeIdOUT
SELECT @ReturnValue AS ReturnValue, @EmployeeIdOUT AS EmployeeOUT
GO

