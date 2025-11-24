-- SEÇÃO DDL (DATA DEFINITION LANGUAGE) - CRIAÇÃO DE TABELAS

-- 1. Tabela ALUNO
CREATE TABLE Aluno (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Data_de_nascimento DATE,
    CPF VARCHAR(14) UNIQUE,
    Data_da_matricula DATE
);

-- 2. Tabela INSTRUTOR
CREATE TABLE Instrutor (
    ID_Funcionario INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Cargo VARCHAR(50),
    Salario DECIMAL(10, 2)
);

-- 3. Tabela PLANO
CREATE TABLE Plano (
    ID_Plano INT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Valor DECIMAL(10, 2) NOT NULL,
    Duracao_Meses INT,
    Descricao VARCHAR(150),
    Ativo BOOLEAN
);

-- 4. Tabela MATRICULA (Tabela Associativa Central)
CREATE TABLE Matricula (
    ID_Matricula INT PRIMARY KEY,
    ID_Aluno INT NOT NULL,
    ID_Instrutor INT NOT NULL,
    ID_Plano INT NOT NULL,
    Data_Matricula DATE NOT NULL,
    Data_Fim DATE,
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Instrutor) REFERENCES Instrutor(ID_Funcionario),
    FOREIGN KEY (ID_Plano) REFERENCES Plano(ID_Plano)
);

-- 5. Tabela PAGAMENTO
CREATE TABLE Pagamento (
    ID_Pagamento INT PRIMARY KEY,
    ID_Matricula INT NOT NULL,
    Data_Vencimento DATE NOT NULL,
    Data_Pagamento DATE,
    Valor_Pago DECIMAL(10, 2),
    Estado VARCHAR(20),
    FOREIGN KEY (ID_Matricula) REFERENCES Matricula(ID_Matricula)
);

-- 6. Tabela FREQUENCIA
CREATE TABLE Frequencia (
    ID_Acesso INT PRIMARY KEY,
    ID_Aluno INT NOT NULL,
    Dat_Hora_Entrada DATETIME NOT NULL,
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno)
);
