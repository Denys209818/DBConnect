DECLARE @a nvarchar(MAX) = '
CREATE TABLE GroupsCurators (
Id INT NOT NULL IDENTITY PRIMARY KEY,
CuratorId INT NOT NULL FOREIGN KEY (CuratorId) REFERENCES Curators(Id),
GroupId INT NOT NULL FOREIGN KEY (GroupId) REFERENCES Groups(Id)
)'


IF EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Curators]'))
AND EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[Groups]'))
AND NOT EXISTS (SELECT * FROM sys.tables WHERE object_id = object_id('[dbo].[GroupsCurators]'))
EXECUTE(@a)