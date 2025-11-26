-- 1. Atualizar email de usuário
UPDATE Usuario
SET Email = 'joao.pereira2025@gmail.com'
WHERE IdUsuario = 1;

-- 2. Registrar devolução de um livro
UPDATE Emprestimo
SET DataDevolucao = '2025-01-20'
WHERE IdEmprestimo = 1;

-- 3. Registrar pagamento de multa
UPDATE Multa
SET DataPagamento = '2025-01-22'
WHERE IdMulta = 1;
