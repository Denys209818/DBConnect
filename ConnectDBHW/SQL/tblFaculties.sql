﻿DECLARE @a nvarchar(MAX) = 
'CREATE TABLE Faculties (
Id INT NOT NULL IDENTITY PRIMARY KEY,
Name nvarchar(100) NOT NULL CHECK(LEN(Name) > 0) UNIQUE
)'

IF NOT EXISTS (SELECT * FROM sys.tables WHERE OBJECT_ID = OBJECT_ID('Faculties'))
EXECUTE(@a)

