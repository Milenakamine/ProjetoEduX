USE EduX

-- Adicionando valores aos atributos da tabela TipoUsuario:
INSERT INTO TipoUsuario (Descricao) 
	VALUES 
	('Aluno'),
	('Professor');

-- Adicionando valores aos atributos da tabela Instituicao:
INSERT INTO Instituicao (Nome)
	VALUES
	('Senai');

-- Adicionando valores aos atributos da tabela Curso:
 INSERT INTO Curso (Nome)
	VALUES
	('Redes de Computadores'),
	('Multimidia'),
	('Desenvolvimento de Sistemas');

-- Adicionando valores aos atributos da tabela Categoria:
INSERT INTO Categoria (Titulo)  
	VALUES
	('Crítico'),
	('Oculto'),
	('Desejável');
-- Adicionando valores aos atributos da tabela Objetivo:
INSERT INTO Objetivo (DataObje, Descricao, IdCategoria)
	VALUES 
	('2012-12-12T00:00:00', 'Esse objetivo.', 1),
	('2013-11-11T00:00:00', 'Esse objetivo..', 2),
	('2014-10-10T00:00:00', 'Esse objetivo...', 3);

-- Adicionando valores aos atributos da tabela ObjetivoAluno:
INSERT INTO ObjetivoAluno (Nota, DataEntrega, IdAlunoTurma, IdObjetivo)
	VALUES
	(9.9,'2020-10-10T23:59:59', 1, 1),
	(10,'2020-10-10T23:59:59', 1, 2),
	(7.5,'2020-10-10T23:59:59', 1, 3);

-- Adicionando valores aos atributos da tabela Turma:
INSERT INTO Turma (Descricao, IdCurso)
	VALUES 
	('Descricao da turma', 1);

-- Adicionando valores aos atributos da tabela ProfTurma:
INSERT INTO ProfTurma (IdUsuario, IdTurma)
	VALUES 
	(2, 1);

-- Adicionando valores aos atributos da tabela AlunoTurma:
INSERT INTO AlunoTurma (IdUsuario ,IdTurma)
	VALUES 
	(1, 1);

-- Adicionando valores aos atributos da tabela Usuario:
INSERT INTO Usuario (Nome, Email, Senha, DataNascimento, IdTipoUsuario, IdInstituicao, IdTurma)
	VALUES 
	('João','João.com','123','2000-10-10T13:00:00', 1, 1, 1),
	('Paulo','Paulo.com','123','2001-11-11T13:00:00', 2, 1, 1);

-- Adicionando valores aos atributos da tabela Post:
INSERT INTO Post (Texto, Imagem, Curtida, IdUsuario)
	VALUES 
	('Post sobre meus easter eggs conquistados','', 50, 1),
	('Post sobre mais alguns easter eggs conquistados','', 132, 1);

-- Adicionando valores aos atributos da tabela Dica:
INSERT INTO Dica (Descricao, IdUsuario)
	VALUES
	('Para conquistar o objetivo oculto você deverá..', 1);


