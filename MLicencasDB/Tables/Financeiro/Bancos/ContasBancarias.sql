﻿CREATE TABLE ContasBancarias
(
	Id INT IDENTITY(1,1) NOT NULL,
	Agencia VARCHAR(5) NOT NULL,
	AgenciaDV CHAR(1) SPARSE NULL,
	Conta	VARCHAR(12) NOT NULL,
	ContaDV CHAR(1) NOT NULL,
	EmiteBoleto BIT NOT NULL DEFAULT(0),
	BancoId INT NOT NULL,
	TipoContaId INT NOT NULL,
	CONSTRAINT PK_CONTASBANCARIAS PRIMARY KEY NONCLUSTERED (Id),
	CONSTRAINT FK_CONTASBANCARIAS_BANCO FOREIGN KEY (BancoId) REFERENCES Bancos(Id),
	CONSTRAINT FK_CONTASBANCARIAS_TIPOCONTAS FOREIGN KEY (TipoContaId) REFERENCES TipoContaBancaria(Id)
)
