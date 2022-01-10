﻿CREATE TABLE G092_CategoriaLancamento
(
	Id INT IDENTITY(1,1) NOT NULL,
	TipoId INT NOT NULL,
	Codigo INT NOT NULL,
	Descricao VARCHAR(100) NOT NULL,
	CONSTRAINT PK_CATEGORIALANCAMENTO PRIMARY KEY NONCLUSTERED(Id),
	CONSTRAINT FK_CATEGORIALANCAMENTO_TIPOLANCAMENTO FOREIGN KEY (TipoId) REFERENCES G091_TipoLancamento(Id)
)