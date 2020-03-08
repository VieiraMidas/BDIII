CREATE TABLE `alunos` (
  `Matricula` int(11) NOT NULL primary key auto_increment,
  `Nome` varchar(40) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Idade` int(4) NOT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `RG_Identidade` varchar(20) DEFAULT NULL,
  `Nome_Pai` varchar(40) NOT NULL,
  `Nome_Mae` varchar(40) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Numero` int(4) NOT NULL,
  `Cidade` varchar(35) NOT NULL,
  `Estado` char(2) NOT NULL,
  `Bairro` varchar(40) NOT NULL,
  `Telefone` varchar(30) DEFAULT NULL,
  `Celular` varchar(30) DEFAULT NULL,
  `Chamarpor` varchar(30) DEFAULT NULL,
  `Alergia` varchar(30) DEFAULT NULL,
  `Grupo_Sangue` varchar(10) DEFAULT NULL,
  `Doador` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `professores` (
  `Codigo` int(4) NOT NULL primary key auto_increment,
  `Nome` varchar(40) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Idade` int(4) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `RG_Identidade` varchar(20) NOT NULL,
  `CTPS` varchar(40) NOT NULL,
  `Graduacao` varchar(30) NOT NULL,
  `Estado_Civil` varchar(25) NOT NULL,
  `Filhos` int(4) NOT NULL,
  `Endereco` varchar(50) NOT NULL,
  `Numero` int(4) NOT NULL,
  `Cidade` varchar(35) NOT NULL,
  `Bairro` varchar(30) NOT NULL,
  `Estado` char(2) NOT NULL,
  `Telefone` varchar(25) NOT NULL,
  `Celular` varchar(25) DEFAULT NULL,
  `Grupo_Sangue` varchar(10) DEFAULT NULL,
  `Doador` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `turmas` (
  `Codigo_Turma` int(4) NOT NULL primary key auto_increment,
  `Descricao` varchar(30) NOT NULL,
  `Grau` int(4) NOT NULL,
  `Serie` int(4) NOT NULL,
  `Turno` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `matriculas` (
  `Cod_Matricula` int(4) primary key not null auto_increment,
  `Mat_Aluno` int(11) NOT NULL,
  `Cod_Turma` int(4) NOT NULL,
  `Valor` float(9,2) NOT NULL,
  `Data` date NOT NULL,
  CONSTRAINT `matriculas_ibfk_1` FOREIGN KEY (`Mat_Aluno`) REFERENCES `alunos` (`Matricula`),
  CONSTRAINT `matriculas_ibfk_2` FOREIGN KEY (`Cod_Turma`) REFERENCES `turmas` (`Codigo_Turma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `alocacoes` (
  `Cod_Posicao` int(11) NOT NULL primary key auto_increment,
  `Codigo_Professor_Aloca` int(4) NOT NULL,
  `Codigo_Turma_Aloca` int(4) NOT NULL,
  CONSTRAINT `alocacoes_ibfk_1` FOREIGN KEY (`Codigo_Professor_Aloca`) REFERENCES `professores` (`Codigo`),
  CONSTRAINT `alocacoes_ibfk_2` FOREIGN KEY (`Codigo_Turma_Aloca`) REFERENCES `turmas` (`Codigo_Turma`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;