DROP DATABASE ConnectionVagas

--Criar banco de dados
CREATE DATABASE ConnectionVagas
GO

--Usar o banco de dados criado
USE ConnectionVagas
GO


--Criações das tabelas DDL
CREATE TABLE TipoUsuario (
	IdTipoUsuario	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (255),
	Ativo		    BIT,
	DataCriacao		DATETIME2,
	DataAlteracao	DATETIME2,
);
GO

CREATE TABLE EstadoCivil (
	IdEstadoCivil	INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (255),
	Ativo		    BIT,
	DataCriacao		DATETIME2,
	DataAlteracao	DATETIME2,
);
GO

CREATE TABLE Candidato (
	IdCandidato		INT PRIMARY KEY IDENTITY,
	Ativo		    BIT,
	DataCriacao		DATETIME2,
	DataAlteracao	DATETIME2,
);
GO

CREATE TABLE Pais (
	IdPais				INT PRIMARY KEY IDENTITY,
	Nome				VARCHAR (255),
	Sigla				VARCHAR (255),
	CodigoTelefonico	VARCHAR (5),
	Ativo				BIT,
	DataCriacao			DATETIME2,
	DataAlteracao		DATETIME2,
);
GO

CREATE TABLE Estado (
	IdEstado		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (255),
	Ativo		    BIT,
	DataCriacao		DATETIME2,
	DataAlteracao	DATETIME2,
	IdPais			INT FOREIGN KEY REFERENCES Pais (IdPais)
);
GO

CREATE TABLE Cidade (
	IdCidade		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (255),
	Ativo		    BIT,
	DataCriacao		DATETIME2,
	DataAlteracao	DATETIME2,
	IdEstado		INT FOREIGN KEY REFERENCES Estado (IdEstado)
);
GO

CREATE TABLE Usuario (
	IdUsuario		INT PRIMARY KEY IDENTITY,
	Nome			VARCHAR (500),
	Email			VARCHAR (300),
	Senha			VARCHAR (300),
	Ativo		    BIT,
	DataCriacao		DATETIME2,
	DataAlteracao	DATETIME2,
	IdTipoUsuario		INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);
GO

CREATE TABLE UsuarioEndereco (
	IdUsuarioEndereco		INT PRIMARY KEY IDENTITY,
	Cep						VARCHAR (30),
	Logradouro				VARCHAR (300),
	Numero					VARCHAR (10),
	Bairro					VARCHAR (300),
	Ativo					BIT,
	DataCriacao				DATETIME2,
	DataAlteracao			DATETIME2,
	IdPais					INT FOREIGN KEY REFERENCES Pais (IdPais),
	IdEstado				INT FOREIGN KEY REFERENCES Estado (IdEstado),
	IdCidade				INT FOREIGN KEY REFERENCES Cidade (IdCidade)
);
GO

CREATE TABLE CandidatoDadosPessoais (
	IdCandidatoDadosPessoais	INT PRIMARY KEY IDENTITY,
	Nome						VARCHAR (500),
	Sobrenome					VARCHAR (300),
	Sexo						BIT,
	Ativo						BIT,
	Celular						VARCHAR (40),
	NomeDaMae					VARCHAR (200),
	FotoUrl						VARCHAR (500),
	Email						VARCHAR (300),
	Senha						VARCHAR (80),
	Apelido						VARCHAR (100),
	DataCriacao					DATETIME2,
	DataAlteracao				DATETIME2,
	IdTipoUsuario				INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	IdPais						INT FOREIGN KEY REFERENCES Pais (IdPais),
	IdUsuarioEndereco			INT FOREIGN KEY REFERENCES UsuarioEndereco (IdUsuarioEndereco),
	IdCandidato					INT FOREIGN KEY REFERENCES Candidato (IdCandidato)
);
GO

CREATE TABLE Cliente (
	IdCliente	INT PRIMARY KEY IDENTITY,
	NomeFantasia				VARCHAR (500),
	RazaoSocial					VARCHAR (300),
	Sigla						VARCHAR (10),
	Ativo						BIT,
	CNPJ						VARCHAR (30),
	UrlSite						VARCHAR (500),
	Email						VARCHAR (300),
	Senha						VARCHAR (80),
	DataCriacao					DATETIME2,
	DataAlteracao				DATETIME2,
	IdTipoUsuario				INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	IdPais						INT FOREIGN KEY REFERENCES Pais (IdPais),
	IdUsuarioEndereco			INT FOREIGN KEY REFERENCES UsuarioEndereco (IdUsuarioEndereco),
);
GO

CREATE TABLE Vaga (
	IdVaga				INT PRIMARY KEY IDENTITY,
	Cargo				VARCHAR (255),
	QntVagas			INT,
	Salario				DECIMAL (18,2),
	Descricao			TEXT,
	BannerUrl			VARCHAR (500),
	DataCriacao			DATETIME2,
	DataTermino			DATETIME2,
	DataAlteracao		DATETIME2,
	IdCliente			INT FOREIGN KEY REFERENCES Cliente (IdCliente),
	IdCidade			INT FOREIGN KEY REFERENCES Cidade (IdCidade)
);
GO

CREATE TABLE Inscricao (
	IdInscricao			INT PRIMARY KEY IDENTITY,
	DataInscricao		DATETIME2,
	DataAlteracao		DATETIME2,
	IdVaga			INT FOREIGN KEY REFERENCES Vaga (IdVaga),
	IdCandidato			INT FOREIGN KEY REFERENCES Candidato (IdCandidato)
);
GO