-- 1 - Buscar o nome e ano dos filmes

select Nome, Ano from filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select * from filmes order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select * from filmes where Nome ='de volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997

select * from filmes where Ano = '1997'

-- 5 - Buscar os filmes lançados APÓS o ano 2000

select * from filmes where Ano min = 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select Nome, Ano, Duracao from Filmes where Duracao > '100' and Duracao < '150' order by Duracao;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select Ano, COUNT(*) as Quantidade from Filmes Group by Ano order by Quantidade desc;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select * from atores where Genero = 'm'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select * from atores  where genero = 'f' order by primeironome

-- 10 - Buscar o nome do filme e o gênero

select f.Nome, g.Genero from FilmesGenero fg join Filmes f on f.id = fg.IdFilme join Generos g on g.Id = fg.IdGenero;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

select  f.Nome, g.Genero from FilmesGenero fg join Filmes f on f.id = fg.IdFilme join Generos g on g.Id = fg.IdGenero where g.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select  f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel from ElencoFilme ef join Filmes f on f.id = ef.IdFilme join Atores a on a.Id = ef.IdAtor;