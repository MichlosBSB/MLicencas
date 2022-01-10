﻿CREATE TABLE LancamentosCaixa
(
	Id INT IDENTITY(1,1) NOT NULL,
	CaixaId INT NOT NULL,
	TipoLancamentoId	INT NOT NULL,
	DataLancamento DATETIME NOT NULL DEFAULT(GETDATE()),
	Valor	MONEY NOT NULL,
	Historico VARCHAR(1000) NOT NULL,
	CONSTRAINT PK_LANCAMENTOSCAIXA PRIMARY KEY NONCLUSTERED (Id),
	CONSTRAINT FK_LANCAMENTOSCAIXA_CAIXA FOREIGN KEY (CaixaId) REFERENCES Caixa(Id),
	CONSTRAINT FK_LANCAMENTOSCAIXA_TIPOLANCAMENTO FOREIGN KEY (TipoLancamentoId) REFERENCES TiposLancamentos(Id)

)
