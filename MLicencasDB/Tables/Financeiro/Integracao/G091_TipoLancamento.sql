﻿CREATE TABLE G091_TipoLancamento
(
	Id INT IDENTITY(1,1) NOT NULL,
	Codigo CHAR(1) NOT NULL,
	Descricao VARCHAR(10),
	CONSTRAINT PK_TIPOLANCAMENTO PRIMARY KEY NONCLUSTERED(Id)
)