CREATE DATABASE SISTEMA_GESTAO_IMOBILIARIA;
USE SISTEMA_GESTAO_IMOBILIARIA;

CREATE TABLE TBL_ADM_IMOBILIARIA (
  ID_IMOBILIARIA INT NOT NULL AUTO_INCREMENT,
  ENDERECO VARCHAR(25) NOT NULL,
  CNPJ VARCHAR(25) NOT NULL,
  IE VARCHAR(25) NOT NULL,
  PRIMARY KEY(ID_IMOBILIARIA)
);
CREATE TABLE TBL_PROPRIETARIO (
  ID_PROPRIETARIO INT NOT NULL AUTO_INCREMENT,
  TBL_ADM_IMOBILIARIA_ID_IMOBILIARIA INT NOT NULL,
  ENDERECO VARCHAR(25) NOT NULL,
  RG VARCHAR(25) NOT NULL,
  CPD VARCHAR(25) NOT NULL,
  ID_IMOBILIARIA INT NOT NULL,
  PRIMARY KEY(ID_PROPRIETARIO),
   CONSTRAINT TBL_PROPRIETARIO_FKIndex1 FOREIGN KEY(TBL_ADM_IMOBILIARIA_ID_IMOBILIARIA) 
   REFERENCES TBL_ADM_IMOBILIARIA(ID_IMOBILIARIA)
);




CREATE TABLE TBL_IMOVEL (
  ID_IMOVEL INT NOT NULL AUTO_INCREMENT,
  TBL_PROPRIETARIO_ID_PROPRIETARIO INT NOT NULL,
  ENDERECO_IMOVEL VARCHAR(25) NOT NULL,
  INSCRICAO_MUNICIPAL_IMOVEL VARCHAR(25) NOT NULL,
  PRIMARY KEY(ID_IMOVEL),
  CONSTRAINT TBL_IMOVEL_FKIndex1 FOREIGN KEY(TBL_PROPRIETARIO_ID_PROPRIETARIO) 
   REFERENCES TBL_PROPRIETARIO(ID_PROPRIETARIO)
);

CREATE TABLE TBL_CLIENTE (
  ID_CLIENTE INT NOT NULL AUTO_INCREMENT,
  TBL_ADM_IMOBILIARIA_ID_IMOBILIARIA INT NOT NULL,
  TBL_IMOVEL_ID_IMOVEL INT NOT NULL,
  NOME_CLIENTE VARCHAR(25) NOT NULL,
  ENDERECO VARCHAR(25) NOT NULL,
  CPF VARCHAR(25) NOT NULL,
  ID_IMOBILIARIA INT NOT NULL,
  ID_IMOVEL INT NOT NULL,
  PRIMARY KEY(ID_CLIENTE),
  CONSTRAINT TBL_CLIENTE_FKIndex1 FOREIGN KEY(TBL_IMOVEL_ID_IMOVEL) 
   REFERENCES TBL_IMOVEL(ID_IMOVEL),
  CONSTRAINT TBL_CLIENTE_FKIndex2 FOREIGN KEY(TBL_ADM_IMOBILIARIA_ID_IMOBILIARIA) 
   REFERENCES TBL_ADM_IMOBILIARIA(ID_IMOBILIARIA));
 
 CREATE TABLE TBL_CONTATO(
	ID_CONTATO INT NOT NULL AUTO_INCREMENT,
    TBL_PROPRIETARIO_ID_PROPRIETARIO INT NOT NULL,
    TBL_ADM_IMBOBILIARIA_ID_IMOBILIARIA INT NOT NULL,
    TBL_CLIENTE_ID_CLIENTE INT NOT NULL,
    TEL1 VARCHAR(255) NOT NULL,
    TEL2 VARCHAR(255) NOT NULL,
    CONSTRAINT TBL_CONTATO_FKIndex1 foreign key(TBL_PROPRIETARIO_ID_PROPRIETARIO) 
    REFERENCES TBL_PROPRIETARIO(ID_PROPRIETARIO),
    CONSTRAINT TBL_CONTATO_FKIndex2 FOREIGN KEY (TBL_ADM_IMBOBILIARIA_ID_IMOBILIARIA) 
    REFERENCES TBL_ADM_IMOBILIARIA(ID_IMOBILIARIA),
    CONSTRAINT TBL_CONTATO_FKIndex3 FOREIGN KEY (TBL_CLIENTE_ID_CLIENTE) 
    REFERENCES TBL_CLIENTE(ID_CLIENTE),
    PRIMARY KEY(ID_CONTATO)
 );


/*INSERTS!!!!!!!!*/
INSERT INTO TBL_ADM_IMOBILIARIA
VALUES();
/*--------------*/