CREATE VIEW [dbo].[EmployeeInfo]
	AS SELECT 

	emplyee.Id AS EmployeeId,
	ISNULL(emplyee.EmployeeName, CONCAT(person.FirstName, ' ', person.LastName)) AS EmployeeFullName,
	CONCAT(address.ZipCode, '_', address.State, ', ', address.City, '-', address.Street) AS EmployeeFullAddress,
	CONCAT(CompanyName, '(', Position, ')') AS EmployeeCompanyInfo

	FROM Employee AS emplyee
	INNER JOIN Person AS person ON emplyee.PersonId = person.Id
	LEFT JOIN Address AS address ON emplyee.AddressId = address.Id
