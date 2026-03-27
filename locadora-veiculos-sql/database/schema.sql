-- Criação do banco
CREATE DATABASE LocadoraVeiculos;
USE LocadoraVeiculos;

-- Tabela Cliente
CREATE TABLE Cliente (
    idCliente INT NOT NULL,
    CPF VARCHAR(20) NOT NULL,
    nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL, 
    endereco VARCHAR(100) NOT NULL,
    PRIMARY KEY (idCliente)
);

-- Tabela Veiculo
CREATE TABLE Veiculo (
    idVeiculo INT NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    marca VARCHAR(50) NOT NULL,
    ano INT NOT NULL,
    placa VARCHAR(10) NOT NULL,
    valorDiaria DECIMAL(7,2) NOT NULL,
    estado ENUM ('Disponível', 'Alugado', 'Manutenção') NOT NULL,
    PRIMARY KEY (idVeiculo)
);

-- Tabela Manutencao
CREATE TABLE Manutencao (
    idManutencao INT NOT NULL,
    idVeiculo INT NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    dataManutencao DATE NOT NULL,
    custo DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (idManutencao),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo (idVeiculo)
);

-- Tabela Pagamento
CREATE TABLE Pagamento (
    idPagamento INT NOT NULL,
    forma ENUM ('Cartão', 'Pix', 'Dinheiro') NOT NULL,
    dataPagamento DATE NOT NULL,
    valorTotal DECIMAL(7,2) NOT NULL,
    estado ENUM ('Pago', 'Pendente') NOT NULL,
    PRIMARY KEY (idPagamento)
);

-- Tabela Locacao
CREATE TABLE Locacao (
    idLocacao INT NOT NULL,
    idCliente INT NOT NULL,
    idPagamento INT NOT NULL,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    PRIMARY KEY (idLocacao),
    FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente),
    FOREIGN KEY (idPagamento) REFERENCES Pagamento (idPagamento)
);

-- Tabela associativa
CREATE TABLE LocacaoVeiculo (
    id INT AUTO_INCREMENT,
    idLocacao INT NOT NULL,
    idVeiculo INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (idLocacao) REFERENCES Locacao (idLocacao),
    FOREIGN KEY (idVeiculo) REFERENCES Veiculo (idVeiculo)
);