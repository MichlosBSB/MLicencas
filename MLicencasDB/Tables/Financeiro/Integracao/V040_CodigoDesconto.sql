﻿CREATE TABLE V040_CodigoDesconto
(
	Id INT IDENTITY(1,1) NOT NULL,
	Codigo INT NOT NULL,
	Descricao VARCHAR(50) NOT NULL,
	CONSTRAINT PK_CODIGODESCONTOVENDOR PRIMARY KEY NONCLUSTERED (Id)
)