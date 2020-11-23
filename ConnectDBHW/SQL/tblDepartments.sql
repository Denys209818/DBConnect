DECLARE @a nvarchar(MAX) = '
CREATE TABLE Departments (
Id INT NOT NULL PRIMARY KEY IDENTITY,
Building INT NOT NULL CHECK(Building >= 1 AND Building <= 5),
Financing money NOT NULL CHECK(Financing >= 0) DEFAULT 0,
Name nvarchar(100) NOT NULL CHECK(LEN(Name) > 0) UNIQUE,
FacultyId INT NOT NULL FOREIGN KEY (FacultyId) REFERENCES Faculties(Id)
)'

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Faculties]'))
AND NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Departments]'))
EXECUTE(@a)
