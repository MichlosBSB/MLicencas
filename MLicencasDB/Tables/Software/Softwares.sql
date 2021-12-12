﻿CREATE TABLE Softwares
(
	Id				INT IDENTITY(1,1) NOT NULL,
	Nome			VARCHAR(100) NOT NULL,
	Descricao		VARCHAR(1000) NOT NULL,
	PublicoAlvo		VARCHAR(100) NOT NULL,
	Versao			VARCHAR(50) NOT NULL DEFAULT('1.0.0.0'),
	ClienteServidor	BIT NOT NULL DEFAULT(1),
	PlataformaId	INT NOT NULL,
	OsId			INT NOT NULL,
	CONSTRAINT PK_SOFTWARES PRIMARY KEY NONCLUSTERED (Id),
	CONSTRAINT FK_SOFTWARES_PLATAFORMA FOREIGN KEY (PlataformaId) REFERENCES Plataformas(Id),
	CONSTRAINT FK_SOFTWARES_OS FOREIGN KEY (OsId) REFERENCES SistemasOperacionais(Id)
)