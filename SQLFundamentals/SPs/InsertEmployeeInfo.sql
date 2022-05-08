CREATE PROCEDURE [dbo].[InsertEmployeeInfo]
	@EmployeeName nvarchar(100) = null,
	@FirstName nvarchar(50) = null,
	@LastName nvarchar(50) = null,
	@CompanyName nvarchar(50),
	@Position nvarchar(30) = null,
	@Street nvarchar(50),
	@City nvarchar(20) = null,
	@State nvarchar(50) = null,
	@ZipCode nvarchar(50) = null
AS
if (RTRIM(ISNULL(@EmployeeName, '')) LIKE ''
AND RTRIM(ISNULL(@FirstName, '')) LIKE ''
AND RTRIM(ISNULL(@LastName, '')) LIKE '')
BEGIN
	RAISERROR('EmployeeName, FirstName and LastName is empty or null', 16, 1)
END
	INSERT INTO Address(City, State, Street, ZipCode)
	VALUES (@City, @State, @Street, @ZipCode)
	declare @AddressId int = SCOPE_IDENTITY();

	INSERT INTO Person(FirstName, LastName)
	VALUES (@FirstName, @LastName)
	declare @PersonId int = SCOPE_IDENTITY();

	INSERT INTO Employee(AddressId, PersonId, CompanyName, Position, EmployeeName)
	VALUES (@AddressId, @PersonId, LEFT(@CompanyName, 20), @Position, @EmployeeName)
