-- SEÇÃO DML (DATA MANIPULATION LANGUAGE) - ATUALIZAÇÕES E DELETES

-- Exemplo 1: Aumentar o salário do Personal Trainer
UPDATE Instrutor
SET Salario = 3800.00
WHERE Nome = 'Carlos Silva';

-- Exemplo 2: Marcar um pagamento pendente como pago
UPDATE Pagamento
SET Data_Pagamento = CURDATE(),
    Estado = 'Pago'
WHERE ID_Pagamento = 3;

-- Exemplo 3: Deletar um registro de frequência incorreto (apenas como exemplo de comando)
-- DELETE FROM Frequencia WHERE ID_Acesso = 3;
