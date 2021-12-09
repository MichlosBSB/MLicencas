﻿CREATE TABLE ContatosFabrica
(
	Id			INT IDENTITY(1,1) NOT NULL,
	Nome		VARCHAR(300) NOT NULL,
	Cargo		VARCHAR(200) NOT NULL,
	Email		VARCHAR(300) NOT NULL,
	FabricaId	INT NOT NULL,
	CONSTRAINT PK_CONTATOSFABRICA PRIMARY KEY (Id),
	CONSTRAINT FK_CONSTATOSFABRICA_FABRICA FOREIGN KEY (FabricaId) REFERENCES Fabrica(Id)
)