﻿CREATE TABLE V005_FormaPagamento
(
	Id INT IDENTITY(1,1) NOT NULL,
	Codigo INT NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	CONSTRAINT PK_FORMAPAGAMENTO PRIMARY KEY NONCLUSTERED (Id)
)