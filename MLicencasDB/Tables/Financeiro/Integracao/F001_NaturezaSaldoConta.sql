﻿CREATE TABLE F001_NaturezaSaldoConta
(
	Id INT IDENTITY(1,1) NOT NULL,
	Codigo VARCHAR(3) NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	CONSTRAINT PK_NATUREZASALDOCONTA PRIMARY KEY NONCLUSTERED(ID)
)