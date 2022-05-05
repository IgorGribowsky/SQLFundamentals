INSERT INTO Address ([Street], [City], [State], [ZipCode])
VALUES 
('Jukova', 'Gomel', 'Belarus', '131313'),
('Sovetskaya', 'Minsk', 'Belarus', '151234'),
('Pushkinskaya', 'Kiev', 'Ukraine', '545463'),
('Novaya Borovaya', 'Minsk', 'Belarus', '934284')

INSERT INTO Company ([Name], [AddressId])
VALUES 
('First company', 1),
('Second company', 2)

INSERT INTO Person([FirstName], [LastName])
VALUES
('Ivan', 'Dmitriev'),
('Dmitriy', 'Ivanov'),
('Viktor', 'Adamov'),
('Michael', 'Goose')

INSERT INTO Employee([AddressId], [PersonId], [CompanyName], [Position], [EmployeeName])
VALUES
(1, 1, 'Second company', 'Developer', 'Ivan Dmitriev'),
(2, 2, 'First company', 'Manager', 'Dmitriy Ivanov'),
(3, 3, 'Second company', 'Tester', null),
(4, 4, 'Second company', 'SCRUM Master', null)