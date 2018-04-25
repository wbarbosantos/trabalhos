/*
1. Nome do autor que tem livro com estoque zerado
Tabelas: autor escreve livro
*/
Select autor.nome
FROM autor INNER JOIN escreve
		ON  (autor.idautor = escreve.idautor)
	INNER JOIN livro
		ON  (livro.idlivro = escreve.idlivro)
WHERE livro.estoque=0
/*
2. Nomes dos clientes que comprarm o livro "Bichos Monstruosos"
Tabelas: cliente venda iten_da_venda livro
*/
Select cliente.nome
FROM cliente INNER JOIN venda
		ON  (cliente.idcliente = venda.idcliente)
	INNER JOIN itens_da_venda
		ON  (venda.idvenda = itens_da_venda.idvenda)
	INNER JOIN livro
		ON  (itens_da_venda.idlivro = livro.idlivro)
WHERE livro.titulo="Bichos Monstruosos"

/*
3. Que gênero o autor "Robson Pinheiro" escreve?
autor escreve livro genero
*/
Select genero.descricao
FROM autor INNER JOIN escreve
		ON  (autor.idautor = escreve.idautor)
	INNER JOIN livro
		ON  (livro.idlivro = escreve.idlivro)
	INNER JOIN genero
		ON  (livro.idgenero = genero.idgenero)
WHERE autor.nome="Robson Pinheiro"
/*
4. Nomes dos Cliente que compraram livros _do autor "Hilary Duff"
Tabelas: cliente venda iten_da_venda livro escreve autor
*/
Select cliente.nome
FROM cliente INNER JOIN venda
		ON  (cliente.idcliente = venda.idcliente)
	INNER JOIN itens_da_venda
		ON  (venda.idvenda = itens_da_venda.idvenda)
	INNER JOIN livro
		ON  (itens_da_venda.idlivro = livro.idlivro)
	INNER JOIN escreve
		ON  (livro.idlivro = escreve.idlivro)
	INNER JOIN autor
		ON  (escreve.idautor = autor.idautor)
WHERE autor.nome='Hilary Duff'

/*
5. Qual gênero(s) o cliente "Elaine Luciana" gosta de ler?
Tabelas: cliente venda itens_da_venda livro genero
*/
Select genero.descricao
FROM cliente INNER JOIN venda
		ON  (cliente.idcliente = venda.idcliente)
	INNER JOIN itens_da_venda
		ON  (venda.idvenda = itens_da_venda.idvenda)
	INNER JOIN livro
		ON  (itens_da_venda.idlivro = livro.idlivro)
	INNER JOIN escreve
		ON  (livro.idlivro = escreve.idlivro)
	INNER JOIN genero
		ON  (livro.idgenero = genero.idgenero)
WHERE cliente.nome='Elaine Luciana'
/*
6. Quais livros DO autor "Maria José Valero" tem em estoque?
Tabelas: autor escreve livro
*/
Select livro.titulo
FROM autor INNER JOIN escreve
		ON  (autor.idautor = escreve.idautor)
	INNER JOIN livro
		ON  (livro.idlivro = escreve.idlivro)
WHERE autor.nome="Maria José Valero" and estoque>0
/*
7. Que cliente já comprou livros da editora "Benvirá"?
Tabelas: cliente venda iten_da_venda livro editora
*/
Select cliente.nome
FROM cliente INNER JOIN venda
		ON  (cliente.idcliente = venda.idcliente)
	INNER JOIN itens_da_venda
		ON  (venda.idvenda = itens_da_venda.idvenda)
	INNER JOIN livro
		ON  (itens_da_venda.idlivro = livro.idlivro)
	INNER JOIN editora
		ON  (livro.ideditora = editora.ideditora)
WHERE editora.nome='Benvirá'
/*
8. Quais autores venderam 2 ou mais exemplares de seu livro numa única venda?
Tabelas: autor escreve livro itens_da_venda
*/
Select DISTINCT(autor.nome)
FROM autor INNER JOIN escreve
		ON  (autor.idautor = escreve.idautor)
	INNER JOIN livro
		ON  (livro.idlivro = escreve.idlivro)
	INNER JOIN itens_da_venda
		ON  (itens_da_venda.idlivro = livro.idlivro)
WHERE itens_da_venda.qtd>=2
/*
### Para as questões abaixo, combine a consulta com as funções MAX, MIN, COUNT, AVG, SUM ###
*/

/*
9. Qual livro teve o maior número de exemplares vendidos de uma só vez?
*/

/*
10. Quem comprou o livro mais caro?
*/

/*
11. Qual autor tem o livro mais barato?
*/

/*
12. Quantos titulos da editora "Record" estão cadastrados na loja?
*/

/*
13. Qual a média de preço dos livros de "Medicina" (genero)?
*/

/*
14. Qual seria o valor total para se comprar um exemplar de cada livro da editora "Record"?
*/

/*
15. Qual o cliente, titulo _do livro e autor da venda mais antiga?
*/
