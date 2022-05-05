CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(20) NOT NULL,
	[AddressId] int NOT NULL FOREIGN KEY REFERENCES Address(Id)
)
