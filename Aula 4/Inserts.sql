/* Inserção de Dados na tabela Alunos */
INSERT INTO `alunos`(Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES ('PEDRO ANTONIO SILVA', '1997-02-28', 22, '100.526.878-78', '18.528.639', 'PEDRO SILVA', 'MARIA SILVA', 'RUA TREZE DE MAIO', 352, 'VALINHOS', 'SP', 'CENTRO', '19 2627-2325', '19 99999-8888', 'PEDRINHO', 'DERIVADOS DE LEITE', 'o+', 2);

INSERT INTO `alunos`(Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES ('MARCOS SILVA','1998-03-26',21,'100.526.999-71','17.529.640','JOSÉ SILVA','MARIANA SILVA','RUA DOIS DE MAIO',150,'VALINHOS','SP','CENTRO','19 2627-2525','19 99999-7777','PANO','DERIVADOS DE LEITE','o-',2);

INSERT INTO `alunos`(Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES ('ANTONIO SILVA','1998-04-15',21,'100.526.777-72','17.345.645','JAIR SILVA','MARTA SILVA','RUA DOIS DE MAIO',180,'VALINHOS','SP','CENTRO','19 2627-2727','19 99999-1111','PAIO','DERIVADOS DE LEITE','A-',2);

INSERT INTO ALUNOS (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES('PEDRO SILVA','1974-12-01',44,'10234567818','12345978-X',
'MARCOS SILVA','MARIA SILVA','RUA DOS MARMITEIROS',123,'SÃO PAULO','SP','VILA MARIANA',
'11-2233-3456','11-99988-5656','PEDRINHO','LACTOSE','O+',1);
  
INSERT INTO ALUNOS (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES('ANA SILVA','1975-11-01',43,'10256767819','12347979-X',
'MARCOS SILVA','MARIA SILVA','RUA DOS MARMITEIROS',123,'SÃO PAULO','SP','VILA MARIANA',
'11-2233-3456','11-99988-5656','ANINHA','LACTOSE','O-',1);

INSERT INTO ALUNOS (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES('CARLOS MOREIRA','1976-12-01',43,'10234523420','12348777-X',
'ANTONIO MOREIRA','ANA MARIA MOREIRA','RUA DOS ALFACES',1123,'SÃO PAULO','SP','VILA PEDREIRA',
'11-5233-3466','11-99988-1212','KAKA','LACTOSE','O-',1);

INSERT INTO ALUNOS (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,Nome_Pai,Nome_Mae,Endereco,Numero,Cidade,Estado,Bairro,Telefone,Celular,Chamarpor,Alergia,Grupo_Sangue,Doador) VALUES('CARLOS PEDROSA SILVA','1976-10-02',43,'10234500232','12352777-X',
'JOÃO MOREIRA','ANA TEREZA MOREIRA','RUA DOS TOMATES',1125,'SÃO PAULO','SP','VILA DOS NADADORES',
'11-5233-3577','11-99988-1313','PEPE','LACTOSE','A-',1);

/* Inserção de Dados na tabela Professores */
INSERT INTO professores (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,CTPS,Graduacao,Estado_Civil,Filhos,Endereco,Numero,Cidade,Bairro,Estado,Telefone,Celular,Grupo_Sangue,Doador) VALUES ('ARINDA', '1966-02-28', 53, '1392368830', 'XXXXXX-0', 'Pós-Graduação Completa','Letras', 'Solteira', 0, 'Rua Abilio Soares', 14, 'São Paulo', 'Paraíso', 'SP', '(11)5662-7032', '(11)99032-4568', 'O+', 0);

INSERT INTO professores (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,CTPS,Graduacao,Estado_Civil,Filhos,Endereco,Numero,Cidade,Bairro,Estado,Telefone,Celular,Grupo_Sangue,Doador) VALUES ('ISMAEL', '1988-01-10', 42, '3782368490', 'XXXXXX-3', 'Pós-Graduação Completa','Matemática', 'Casado', 3, 'Rua das Belezas', 352, 'São Paulo', 'Morumbi', 'SP', '(11)5661-1012', '(11)97342-4318', 'A-', 1);

INSERT INTO professores (Nome,Data_Nascimento,Idade,CPF,RG_Identidade,CTPS,Graduacao,Estado_Civil,Filhos,Endereco,Numero,Cidade,Bairro,Estado,Telefone,Celular,Grupo_Sangue,Doador) VALUES ('SONIA', '1998-10-23', 21, '4782394969', 'XXXXXX-2', 'Pós-Graduação Completa','Filosofia', 'Divorciada', 1, 'Rua Alberto Feijó', 47, 'Distrito Federal', 'Conceição', 'DF', '(11)5663-9807', '(11)94442-3672', 'B+', 0);

/* Inserção de Dados na tabela Turmas */
INSERT INTO turmas (Descricao,Grau,Serie,Turno) VALUES ('Matemática',3,2,'N');

INSERT INTO turmas (Descricao,Grau,Serie,Turno) VALUES ('Física',1,1,'D');

INSERT INTO turmas (Descricao,Grau,Serie,Turno) VALUES ('Gastronomia',2,2,'N');  


/* Inserção de Dados na tabela Matriculas */
INSERT INTO Matriculas (Mat_Aluno,Cod_Turma,Valor,Data) VALUES (1,1,350,'2020-03-10');

INSERT INTO Matriculas (Mat_Aluno,Cod_Turma,Valor,Data) VALUES (2,3,200,'2021-09-05');

INSERT INTO Matriculas (Mat_Aluno,Cod_Turma,Valor,Data) VALUES (5,2,1000.50,'2019-07-23');

/* Inserção de Dados na tabela Alocações */
INSERT INTO Alocacoes (Codigo_Professor_Aloca,Codigo_Turma_Aloca) VALUES (1,1);

INSERT INTO Alocacoes (Codigo_Professor_Aloca,Codigo_Turma_Aloca) VALUES (1,3);

INSERT INTO Alocacoes (Codigo_Professor_Aloca,Codigo_Turma_Aloca) VALUES (3,2);