-- AUTORES
INSERT INTO Autor (Nome) VALUES
('Machado de Assis'),
('Clarice Lispector'),
('J. K. Rowling');

-- EDITORAS
INSERT INTO Editora (Nome) VALUES
('Companhia das Letras'),
('Rocco'),
('Editora Globo');

-- LIVROS
INSERT INTO Livro (Titulo, AnoPublicacao, IdAutor, IdEditora) VALUES
('Dom Casmurro', 1899, 1, 1),
('A Hora da Estrela', 1977, 2, 3),
('Harry Potter e a Pedra Filosofal', 1997, 3, 2);

-- USUÁRIOS
INSERT INTO Usuario (Nome, Email) VALUES
('João Pereira', 'joao.p@gmail.com'),
('Maria Silva', 'maria.s@gmail.com');

-- EMPRÉSTIMOS
INSERT INTO Emprestimo (IdUsuario, IdLivro, DataEmprestimo, DataDevolucao) VALUES
(1, 1, '2025-01-10', NULL),
(2, 3, '2025-01-05', '2025-01-12');

-- MULTAS
INSERT INTO Multa (IdEmprestimo, Valor, DataPagamento) VALUES
(1, 12.50, NULL);
