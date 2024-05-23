--1
SELECT 
	Nome,
	Ano
FROM Filmes

--2
SELECT 
	Nome,
	Ano
FROM Filmes ORDER BY Ano

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes Where Nome = 'De Volta para o Futuro'

--4
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes Where Ano = 1997

--5
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes Where Ano > 2000

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM Filmes Where Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT 
    Ano,
    COUNT(Ano) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores WHERE Genero = 'M'

--9
SELECT
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT 
    f.Nome AS Nome,
    g.Genero AS Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id

--11
SELECT 
    f.Nome AS Nome,
    g.Genero AS Genero
FROM 
    Filmes f
INNER JOIN 
    FilmesGenero fg ON f.Id = fg.IdFilme
INNER JOIN 
    Generos g ON fg.IdGenero = g.Id WHERE g.Genero = 'Mistério'

--12
SELECT 
    f.Nome AS Nome,
    a.PrimeiroNome,
    a.UltimoNome,
    ef.Papel
FROM 
    Filmes f
INNER JOIN 
    ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN 
    Atores a ON ef.IdAtor = a.Id
ORDER BY 
    f.Nome, a.UltimoNome, a.PrimeiroNome;
