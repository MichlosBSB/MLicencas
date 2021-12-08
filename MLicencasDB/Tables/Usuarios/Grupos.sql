﻿CREATE TABLE Grupos
(
	Id INT IDENTITY(1,1) NOT NULL,
	Nome VARCHAR(50) NOT NULL,
	Ativo BIT NOT NULL DEFAULT (1),
	CONSTRAINT PK_GRUPO PRIMARY KEY NONCLUSTERED(Id)
)