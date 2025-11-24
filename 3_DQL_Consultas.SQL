-- SEÇÃO DQL (DATA QUERY LANGUAGE) - CONSULTAS E RELATÓRIOS

-- 1. Listar todos os alunos matriculados e seus planos
SELECT
    A.Nome AS Nome_Aluno,
    P.Nome AS Nome_Plano,
    M.Data_Matricula
FROM Aluno A
JOIN Matricula M ON A.ID_Aluno = M.ID_Aluno
JOIN Plano P ON M.ID_Plano = P.ID_Plano;

-- 2. Mostrar o status de pagamento de cada matrícula
SELECT
    A.Nome AS Nome_Aluno,
    PAG.Data_Vencimento,
    PAG.Estado
FROM Aluno A
JOIN Matricula M ON A.ID_Aluno = M.ID_Aluno
JOIN Pagamento PAG ON M.ID_Matricula = PAG.ID_Matricula
ORDER BY A.Nome, PAG.Data_Vencimento;

-- 3. Listar instrutores e o total de alunos que eles supervisionam
SELECT
    I.Nome AS Nome_Instrutor,
    COUNT(M.ID_Aluno) AS Total_Alunos
FROM Instrutor I
LEFT JOIN Matricula M ON I.ID_Funcionario = M.ID_Instrutor
GROUP BY I.Nome;
