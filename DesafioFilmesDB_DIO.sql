-- Desafios  DIO - Trilha .NET--

-- 01 --
SELECT Nome, Ano FROM Filmes


-- 02 --
SELECT Nome, Ano, Duracao FROM Filmes
ORDER BY Ano


-- 03 --
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome LIKE 'De%Futuro'


-- 04 --
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997


-- 05 --
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano > 2000


-- 06 --
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao


-- 07 --
SELECT Ano, COUNT(*) Quantidade FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


-- 08 --
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'M'


-- 09 --
SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10 --
SELECT F.Nome, Genero FROM Filmes AS F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero


-- 11 --
SELECT F.Nome, Genero FROM Filmes AS F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mistério'


-- 12 -
SELECT F.Nome AS Filme, PrimeiroNome, UltimoNome, Papel From Filmes F
INNER JOIN ElencoFilme EF ON EF.IdFilme = F.Id
INNER JOIN Atores AS A ON A.Id = EF.IdAtor
