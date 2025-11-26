-- 1. Listar todos os livros com seus autores
SELECT L.Titulo, A.Nome AS Autor
FROM Livro L
JOIN Autor A ON L.IdAutor = A.IdAutor;

-- 2. Mostrar empréstimos ativos (sem devolução)
SELECT E.IdEmprestimo, U.Nome AS Usuario, L.Titulo, E.DataEmprestimo
FROM Emprestimo E
JOIN Usuario U ON E.IdUsuario = U.IdUsuario
JOIN Livro L ON E.IdLivro = L.IdLivro
WHERE E.DataDevolucao IS NULL;

-- 3. Listar multas pendentes
SELECT M.IdMulta, U.Nome, M.Valor
FROM Multa M
JOIN Emprestimo E ON M.IdEmprestimo = E.IdEmprestimo
JOIN Usuario U ON E.IdUsuario = U.IdUsuario
WHERE M.DataPagamento IS NULL;

-- 4. Contar quantos livros cada editora publicou
SELECT Ed.Nome AS Editora, COUNT(*) AS TotalLivros
FROM Livro L
JOIN Editora Ed ON L.IdEditora = Ed.IdEditora
GROUP BY Ed.Nome;

-- 5. Listar os 2 livros mais antigos
SELECT Titulo, AnoPublicacao
FROM Livro
ORDER BY AnoPublicacao ASC
LIMIT 2;
