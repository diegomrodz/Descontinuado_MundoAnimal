-- ----------------------------------------------------------------------------
-- CRIA BANCO DE DADOS MundoAnimal_BD
-- ----------------------------------------------------------------------------
CREATE DATABASE [MundoAnimal_BD]
GO

USE [MundoAnimal_BD]
GO

-- ----------------------------------------------------------------------------
-- CRIA TABELA Pessoa
-- ----------------------------------------------------------------------------
CREATE TABLE [Pessoa] (
    [Pessoa_Id]             INT IDENTITY PRIMARY KEY,
    [Nome]                  VARCHAR(60) NOT NULL,
    [Sobrenome]             VARCHAR(80) NOT NULL,
    [Nome_Fantasia]         VARCHAR(100) NULL,
    [Tipo_Pessoa]           CHAR(1) NOT NULL, -- F: Fisica, J: Juridica
    [Genero]                CHAR(1) NOT NULL DEFAULT 'O', -- M: Masculino, F: Feminino, O: Outro/N�o tem
    [RG]                    CHAR(8) NULL, -- Formato: 55555555
    [CPF]                   CHAR(10) NULL, -- Formato: 55555555555
    [CNPJ]                  CHAR(14) NULL, -- Formato: 555555555555555
    [Nascimento]            DATETIME NULL,
    [Data_Cadastro]         DATETIME NOT NULL DEFAULT GETDATE(),
    [Ativo]                 CHAR(1) NOT NULL DEFAULT 'S',
    CONSTRAINT [ck_Pessoa_Genero]
        CHECK([Genero] IN ('M', 'F', 'O')),
    CONSTRAINT [ck_Pessoa_Tipo_Pessoa]
        CHECK([Tipo_Pessoa] IN ('F', 'J')),
    CONSTRAINT [ck_Pessoa_tipo_ativo_sn]
        CHECK([Ativo] IN ('S', 'N')));
GO

-- ----------------------------------------------------------------------------
-- CRIA TABELA Pessoa_Endereco
-- ----------------------------------------------------------------------------
CREATE TABLE [Pessoa_Endereco] (
    [Pessoa_Id]             INT NOT NULL,
    [Pais]                  VARCHAR(50) NOT NULL,
    [Estado]                CHAR(2) NULL,
    [Cidade]                VARCHAR(100) NULL,
    [Endereco]              VARCHAR(200) NULL,
    [NumeroEndereco]        INT NULL,
    [Bairro]                VARCHAR(120) NULL,
    [Complemento]           VARCHAR(300) NULL,
    [CEP]                   CHAR(8) NOT NULL DEFAULT 'EXTERIOR',
    [Data_Cadastro]         DATETIME NOT NULL DEFAULT GETDATE(),
    [Ativo]                 CHAR(1) NOT NULL DEFAULT 'S',
    PRIMARY KEY ([Pessoa_Id], [CEP]),
    CONSTRAINT [fk_Pessoa_Endereco_Pessoa]
        FOREIGN KEY([Pessoa_Id]) REFERENCES [Pessoa]([Pessoa_Id]),
    CONSTRAINT [ck_Pessoa_Endereco_tipo_ativo_sn]
        CHECK([Ativo] IN ('S', 'N')));
GO

-- ----------------------------------------------------------------------------
-- CRIA TABELA Pessoa_Contato
-- ----------------------------------------------------------------------------
CREATE TABLE [Pessoa_Contato] (
    [Pessoa_Id]             INT NOT NULL,
    [Tipo_Contato]          INT NOT NULL, -- E: Email, T:Telefone, F: Fax
    [Contato]               VARCHAR(150) NOT NULL,
    [Data_Cadastro]         DATETIME NOT NULL DEFAULT GETDATE(),
    [Ativo]                 CHAR(1) NOT NULL DEFAULT 'S',
    PRIMARY KEY ([Pessoa_Id], [Tipo_Contato], [Contato]),
    CONSTRAINT [ck_Pessoa_Contato_Tipo]
        CHECK([Tipo_Contato] IN ('E', 'T', 'F')), 
    CONSTRAINT [fk_Pessoa_Contato_Pessoa]
        FOREIGN KEY([Pessoa_Id]) REFERENCES [Pessoa]([Pessoa_Id]),
    CONSTRAINT [ck_Pessoa_Contato_tipo_ativo_sn]
        CHECK([Ativo] IN ('S', 'N')));
GO

-- ----------------------------------------------------------------------------
-- CRIA TABELA Pessoa_Parente
-- ----------------------------------------------------------------------------
CREATE TABLE [Pessoa_Parente] (
    [Pessoa_Id]             INT NOT NULL,
    [Parente_Id]            INT NOT NULL,
    [Parentesco]            CHAR(1) NOT NULL, -- P: Pai, M: Mae, F: Filho(a), I: Irmao, C: Conjuge,
    [Data_Cadastro]         DATETIME NOT NULL DEFAULT GETDATE(),
    [Ativo]                 CHAR(1) NOT NULL DEFAULT 'S',
    PRIMARY KEY ([Pessoa_Id], [Parente_Id]),
    CONSTRAINT [fk_Pessoa_Parente_Pessoa]
        FOREIGN KEY([Pessoa_Id]) REFERENCES [Pessoa]([Pessoa_Id]),
    CONSTRAINT [fk_Pessoa_Parente_Parente_Pessoa]
        FOREIGN KEY([Parente_Id]) REFERENCES [Pessoa]([Pessoa_Id]),
    CONSTRAINT [ck_Pessoa_Parente_Parentesco]
        CHECK([Parentesco] IN ('P', 'M', 'F', 'I', 'C')),
    CONSTRAINT [ck_Pessoa_Parente_tipo_ativo_sn]
        CHECK([Ativo] IN ('S', 'N')));
GO