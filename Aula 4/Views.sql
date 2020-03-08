/* Views da tabela Alunos*/
CREATE VIEW VW_LISTAALUNOS
AS SELECT Matricula,Nome,Data_Nascimento
FROM ALUNOS;

CREATE VIEW VW_LISTAALUNOS2
AS SELECT Matricula,Nome,Data_Nascimento
FROM ALUNOS
WHERE Nome='PEDRO ANTONIO SILVA';

/* Views da tabela Professores*/
CREATE VIEW VW_LISTAProfessores
AS SELECT Nome,RG_Identidade,Grupo_Sangue,Doador
FROM Professores;

CREATE VIEW VW_LISTAProfessoresNaoDoadores
AS SELECT Codigo,Nome,Grupo_Sangue
FROM Professores
WHERE Doador=0;

/* Views da tabela Turmas*/
CREATE VIEW VW_LISTATurmas
AS SELECT Grau,Turno,Descricao
FROM Turmas;

CREATE VIEW VW_LISTATurmas1serie
AS SELECT Turno,Descricao
FROM turmas
WHERE Serie=1;

/* Views da tabela Matriculas*/
CREATE VIEW VW_LISTAMATRICULAS
AS SELECT Mat_Aluno, Valor, data
FROM Matriculas;

CREATE VIEW VW_LISTAMatriculasBaratas
AS SELECT Mat_Aluno, Cod_Turma, Valor
FROM Matriculas
WHERE Valor<500;

/* Views da tabela Alocacoes*/
CREATE VIEW VW_LISTAAlocacoes
AS SELECT Cod_Posicao, Codigo_Professor_Aloca
FROM Alocacoes;

CREATE VIEW VW_LISTAAlocacoesSemTurma1
AS SELECT Cod_Posicao
FROM Alocacoes
WHERE Codigo_Turma_Aloca>1;