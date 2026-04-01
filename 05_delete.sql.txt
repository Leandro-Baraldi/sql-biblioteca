-- 1. Remover multa paga
DELETE FROM Multa
WHERE IdMulta = 1 AND DataPagamento IS NOT NULL;

-- 2. Remover empréstimo concluído
DELETE FROM Emprestimo
WHERE IdEmprestimo = 2 AND DataDevolucao IS NOT NULL;

-- 3. Excluir usuário sem empréstimos
DELETE FROM Usuario
WHERE IdUsuario = 2;
