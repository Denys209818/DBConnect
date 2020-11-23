DECLARE @a nvarchar(MAX) = '
CREATE TABLE Lectures (
Id INT NOT NULL IDENTITY PRIMARY KEY,
Date date NOT NULL CHECK(Date > GETDATE()),
SubjectId INT NOT NULL FOREIGN KEY (SubjectId) REFERENCES Subjects(Id),
TeacherId INT NOT NULL FOREIGN KEY (TeacherId) REFERENCES Teachers(Id)
)'

IF EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Subjects]'))
AND EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Teachers]'))
AND NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Lectures]'))
EXECUTE(@a)
