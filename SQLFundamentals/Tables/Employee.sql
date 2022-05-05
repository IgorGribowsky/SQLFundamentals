CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[AddressId] int NOT NULL FOREIGN KEY REFERENCES Address(Id),
	[PersonId] int NOT NULL FOREIGN KEY REFERENCES Person(Id),
	[CompanyName] nvarchar(20) NOT NULL,
	[Position] nvarchar(30) NULL,
	[EmployeeName] nvarchar(100) NULL
)
