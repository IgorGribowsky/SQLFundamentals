INSERT INTO Address ([Street], [City], [State], [ZipCode])
VALUES 
('Jukova', 'Gomel', 'Belarus', '131313'),
('Sovetskaya', 'Minsk', 'Belarus', '151234'),
('Pushkinskaya', 'Kiev', 'Ukraine', '545463'),
('Novaya Borovaya', 'Minsk', 'Belarus', '934284')

INSERT INTO Person([FirstName], [LastName])
VALUES
('Ivan', 'Dmitriev'),
('Dmitriy', 'Ivanov'),
('Viktor', 'Korneplod'),
('Michael', 'Goose')

INSERT INTO Employee([AddressId], [PersonId], [CompanyName], [Position], [EmployeeName])
VALUES
(1, 1, 'Second company', 'Developer', 'Ivan Dmitriev'),
(2, 2, 'First company', 'Manager', 'Dmitriy Ivanov'),
(3, 3, 'Super company', 'Tester', null),
(4, 4, 'Bad company', 'SCRUM Master', null)