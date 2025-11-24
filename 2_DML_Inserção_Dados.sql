-- SEÇÃO DML (DATA MANIPULATION LANGUAGE) - INSERÇÃO DE DADOS

-- 1. Inserindo Dados na Tabela Plano
INSERT INTO Plano (ID_Plano, Nome, Valor, Duracao_Meses, Descricao, Ativo) VALUES
(1, 'Mensal', 99.90, 1, 'Acesso total 30 dias', TRUE),
(2, 'Trimestral', 269.70, 3, 'Acesso total 90 dias com desconto', TRUE),
(3, 'Anual', 999.00, 12, 'Melhor custo-benefício', TRUE);

-- 2. Inserindo Dados na Tabela Instrutor
INSERT INTO Instrutor (ID_Funcionario, Nome, Cargo, Salario) VALUES
(101, 'Carlos Silva', 'Personal Trainer', 3500.00),
(102, 'Mariana Costa', 'Instrutora de Yoga', 2800.00);

-- 3. Inserindo Dados na Tabela Aluno
INSERT INTO Aluno (ID_Aluno, Nome, Data_de_nascimento, CPF, Data_da_matricula) VALUES
(1, 'Tatiane Rodrigues', '1995-05-15', '123.456.789-00', '2024-01-10'),
(2, 'Pedro Henrique', '2000-11-20', '987.654.321-01', '2024-03-01');

-- 4. Inserindo Dados na Tabela Matricula (usando FKs)
INSERT INTO Matricula (ID_Matricula, ID_Aluno, ID_Instrutor, ID_Plano, Data_Matricula, Data_Fim) VALUES
(1, 1, 101, 3, '2024-01-10', '2025-01-10'),
(2, 2, 102, 1, '2024-03-01', '2024-04-01');

-- 5. Inserindo Dados na Tabela Pagamento
INSERT INTO Pagamento (ID_Pagamento, ID_Matricula, Data_Vencimento, Data_Pagamento, Valor_Pago, Estado) VALUES
(1, 1, '2024-01-10', '2024-01-10', 999.00, 'Pago'),
(2, 2, '2024-03-01', '2024-03-01', 99.90, 'Pago'),
(3, 2, '2024-04-01', NULL, 99.90, 'Pendente');

-- 6. Inserindo Dados na Tabela Frequencia
INSERT INTO Frequencia (ID_Acesso, ID_Aluno, Dat_Hora_Entrada) VALUES
(1, 1, '2024-03-10 09:00:00'),
(2, 1, '2024-03-12 18:30:00'),
(3, 2, '2024-03-15 07:15:00');
