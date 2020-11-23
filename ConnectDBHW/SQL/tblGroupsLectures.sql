DECLARE @a nvarchar(MAX) = '
CREATE TABLE GroupsLectures (
Id INT NOT NULL IDENTITY PRIMARY KEY,
GroupId INT NOT NULL FOREIGN KEY (GroupId) REFERENCES Groups(Id),
LectureId INT NOT NULL FOREIGN KEY (LectureId) REFERENCES Lectures(Id)
)'


IF EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Groups]'))
AND EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Lectures]'))
AND NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[GroupsLectures]'))
EXECUTE(@a)

