--1 - Buscar o nome e ano dos filmes
SELECT NOME,ANO FROM FILMES

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT NOME,ANO FROM FILMES ORDER BY ANO

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM FILMES WHERE NOME = 'De Volta para o Futuro'

--4 - Buscar os filmes lançados em 1997
SELECT * FROM FILMES WHERE Ano = 1997

--5 - Buscar os filmes lançados APÓS o ano 2000
SELECT * FROM FILMES WHERE Ano > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * FROM FILMES WHERE duracao > 100 and duracao < 150 order by duracao 

--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ano, count(*) quantidade FROM FILMES GROUP BY ANO order by count(*) desc

--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome,UltimoNome FROM ATORES where genero = 'M'

--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome,UltimoNome FROM ATORES where genero = 'F' order by PrimeiroNome

--10 - Buscar o nome do filme e o gênero
select F.Nome,G.Genero  
from Filmes F
inner join FilmesGenero FG 
	on F.id = FG.idFilme 
inner join Generos G 
	on FG.idGenero = G.id 






--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select F.Nome,G.Genero  
from Filmes F
inner join FilmesGenero FG 
	on F.id = FG.idFilme 
inner join Generos G 
	on FG.idGenero = G.id 
Where G.genero = 'Mistério'

--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel from filmes F
inner join ElencoFilme EF
	on F.id = EF.IdFilme
inner join Atores A
	on EF.IdAtor = A.Id