DECLARE @a nvarchar(MAX) = '
CREATE TABLE Teachers (
Id INT NOT NULL IDENTITY PRIMARY KEY,
IsProfessor bit NOT NULL DEFAULT 0,
Name nvarchar(MAX) NOT NULL CHECK(LEN(Name) > 0),
Salary MONEY NOT NULL CHECK(Salary > 0),
Surname NVARCHAR(MAX) NOT NULL CHECK(LEN(Surname) > 0)
)'


IF NOT EXISTS (SELECT * FROM sys.tables WHERE OBJECT_ID = OBJECT_ID('[dbo].[Teachers]'))
EXECUTE (@a)