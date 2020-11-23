DECLARE @a nvarchar(MAX) = '
CREATE TABLE Students (
Id INT NOT NULL IDENTITY PRIMARY KEY,
Name nvarchar(MAX) NOT NULL CHECK(LEN(Name) > 0),
Rating INT NOT NULL CHECK(Rating >= 0 AND Rating <= 5),
Surname NVARCHAR(MAX) NOT NULL CHECK(LEN(Surname) > 0)
)'

IF NOT EXISTS (SELECT * FROM sys.tables WHERE OBJECT_ID = OBJECT_ID('[dbo].[Students]'))
EXECUTE (@a)
