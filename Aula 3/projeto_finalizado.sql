#-- Script de Criação das Tabelas
CREATE DATABASE SISTEMA_ACADEMICO_ETEC_HELIOPOLIS;
USE SISTEMA_ACADEMICO_ETEC_HELIOPOLIS;

#-- Criar a Tabela de Alunos
CREATE TABLE ALUNOS (
Matricula Int(11) NOT NULL primary key auto_increment,
Nome Varchar(40) NOT NULL,
Data_Nascimento Date NOT NULL,
Idade Int(4) NOT NULL,
CPF Varchar(14),
RG_Identidade Varchar(20),
Nome_Pai Varchar(40) NOT NULL,
Nome_Mae Varchar(40) NOT NULL,
Endereco Varchar(50) NOT NULL,
Numero Int(4) NOT NULL,
Cidade Varchar(35) NOT NULL,
Estado Char(2) NOT NULL,
Bairro Varchar(40) NOT NULL,
Telefone Varchar(30),
Celular Varchar(30),
Chamarpor Varchar(30),
Alergia Varchar(30),
Grupo_Sangue Varchar(10),
Doador Int(4)
);

#-- Criar a Tabela de Professores
CREATE TABLE PROFESSORES (
Codigo Int(4) NOT NULL primary key auto_increment,
Nome Varchar(40) NOT NULL,
Data_Nascimento Date NOT NULL ,
Idade Int(4) NOT NULL,
CPF Varchar(14) NOT NULL ,
RG_Identidade Varchar(20) NOT NULL,
CTPS Varchar(20) NOT NULL,
Graduacao Varchar(30) NOT NULL,
Estado_Civil Varchar(25) NOT NULL,
Filhos Int(4) NOT NULL,
Endereco Varchar(50) NOT NULL ,
Numero Int(4) NOT NULL,
Cidade Varchar(35) NOT NULL,
Bairro Varchar(30) NOT NULL ,
Estado Char(2) NOT NULL,
Telefone Varchar(25) NOT NULL,
Celular Varchar(25),
Grupo_Sangue Varchar(10),
Doador Int(4)
);

#-- Criar a Tabela de Turmas
CREATE TABLE TURMAS (
Codigo_Turma Int(4) NOT NULL primary key auto_increment,
Descricao Varchar(30) NOT NULL,
Grau Int(4) NOT NULL,
Serie Int(4) NOT NULL,
Turno Char(1) NOT NULL
);

#-- Criar a Tabela de Matrículas
CREATE TABLE MATRICULAS (
id_matriculuas int(4) NOT null primary key auto_increment,
Mat_Aluno Int(11) NOT NULL,
Cod_Turma Int(4) NOT NULL,
Valor Float(9,2) NOT NULL ,
Data Date NOT NULL,
FOREIGN KEY(MAT_ALUNO) REFERENCES ALUNOS(MATRICULA),
FOREIGN KEY(COD_TURMA) REFERENCES TURMAS(CODIGO_TURMA)
);

#-- Criar a Tabela de Alocações
CREATE TABLE ALOCACOES (
id_locacoes int(4) not null primary key auto_increment,
Codigo_Professor_Aloca Int(4) NOT NULL ,
Codigo_Turma_Aloca Int(4) NOT NULL ,
FOREIGN KEY (CODIGO_PROFESSOR_ALOCA) REFERENCES PROFESSORES(CODIGO),
FOREIGN KEY (CODIGO_TURMA_ALOCA) REFERENCES TURMAS(CODIGO_TURMA)
);