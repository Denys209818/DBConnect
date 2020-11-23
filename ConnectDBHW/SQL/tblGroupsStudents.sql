DECLARE @a nvarchar(MAX) = '
CREATE TABLE GroupsStudents (
Id INT NOT NULL IDENTITY PRIMARY KEY,
GroupId INT NOT NULL FOREIGN KEY (GroupId) REFERENCES Groups(Id),
StudentId INT NOT NULL FOREIGN KEY (StudentId) REFERENCES Students(Id)
)'

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Groups]'))
AND EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Students]'))
AND NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[GroupsStudents]'))
EXECUTE(@a)



