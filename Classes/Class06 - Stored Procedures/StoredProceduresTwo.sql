USE SEDC
GO

CREATE OR ALTER PROCEDURE sp_AddCustomer
(
	@Name nvarchar(100),
	@IsActive bit,
	@AccountNumber nvarchar(100)=NULL,
	@City nvarchar(100) = NULL,
	@RegionName nvarchar(100) = NULL,
	@CustomerSize nvarchar(10) = NULL,
	@PhoneNumber nvarchar(20) = NULL
)
AS
BEGIN
	INSERT INTO Customers ([Name],IsActive,AccountNumber,City,RegionName,CustomerSize, PhoneNumber)
	VALUES (@Name,@IsActive,@AccountNumber,@City,@RegionName,@CustomerSize,@PhoneNumber)
END
GO

EXEC sp_AddCustomer @Name = 'Stokomak', @IsActive = 1
GO

--IF(LEN(@Name)<5)
--SELECT 'The name must not be shorter than 5 letters' 
