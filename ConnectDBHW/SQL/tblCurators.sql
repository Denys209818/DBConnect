DECLARE @a nvarchar(MAX) = '
CREATE TABLE Curators (
Id int NOT NULL IDENTITY PRIMARY KEY,
Name nvarchar(MAX) NOT NULL CHECK(LEN(Name) > 0),
Surname nvarchar(MAX) NOT NULL CHECK(LEN(Surname) > 0)
)'


IF NOT EXISTS (SELECT * FROM sys.tables WHERE OBJECT_ID = OBJECT_ID('[dbo].[Curators]'))
EXECUTE(@a)
