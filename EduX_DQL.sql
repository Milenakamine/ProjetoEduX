/* DQL - Data Query Language */
USE EduX;
-- Seleciona e imprime todos os dados presentes na tabela :

SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;
SELECT * FROM Instituicao;
SELECT * FROM Curso;
SELECT * FROM Post;
SELECT * FROM Dica;
SELECT * FROM Turma;
SELECT * FROM ProfTurma;
SELECT * FROM AlunoTurma;
SELECT * FROM ObjetivoAluno;
SELECT * FROM Objetivo;
SELECT * FROM Categoria;

-- Seleciona e imprime os alunos a partir da nota em ordem decrescente e crescente(padrão):

/* Decrescente */
SELECT * FROM ObjetivoAluno ORDER BY Nota DESC;

/* Crescente(padrão) */
SELECT * FROM ObjetivoAluno ORDER BY Nota;

-- Seleciona e imprime a soma das notas de um determinado aluno pelo seu ID:

SELECT SUM(Nota) AS TotalNota 
FROM ObjetivoAluno 
WHERE IdAlunoTurma=1;

/* Soma das curtidas seriam feitas da mesma forma :*/
SELECT SUM(Curtida) AS TotalCurtidas		
FROM Post
WHERE IdUsuario=1;

-- Seleciona e imprime todas as categorias dos objetivos, seu prazos de entrega e sua descrição através do RIGHT JOIN :
SELECT
		Categoria.Titulo,
		Objetivo.DataObje,
		Objetivo.Descricao
FROM Objetivo
		RIGHT JOIN Categoria ON Objetivo.IdCategoria = Categoria.IdCategoria
		
WHERE Categoria.IdCategoria <= 3

-- Seleciona e imprime a data do prazo do objetivo no Padrão Americano e no Padrão que conhecemos e usamos :

/* Padrão Americano */
SELECT IdObjetivo, 
Objetivo.DataObje AS DataObjetivo
FROM Objetivo;

/* Padrão Brasileiro */
SELECT IdObjetivo, 
CONVERT (char, Objetivo.DataObje, 110) 
AS DataObjetivo 
FROM Objetivo; 


