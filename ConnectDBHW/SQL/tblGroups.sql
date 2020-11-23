DECLARE @a nvarchar(MAX) = '
CREATE TABLE Groups (
Id INT NOT NULL IDENTITY PRIMARY KEY,
Name nvarchar(10) NOT NULL CHECK(LEN(Name) > 0) UNIQUE,
Year INT NOT NULL CHECK (Year >= 1 AND Year <= 5),
DepartmentId INT NOT NULL FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
)'

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Departments]'))
AND NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Groups]'))
EXECUTE(@a)
