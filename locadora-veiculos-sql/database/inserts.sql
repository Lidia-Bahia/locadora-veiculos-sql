-- Dados fictícios fornecidos para fins acadêmicos
-- Objetivo: popular o banco LocadoraVeiculos para testes e consultas

USE LocadoraVeiculos;

-- =========================
-- Tabela Veiculo
-- =========================
INSERT INTO Veiculo (idVeiculo, modelo, marca, ano, placa, valorDiaria, estado) VALUES
(1, 'Onix', 'Chevrolet', 2021, 'ABC-1D34', 150.00, 'Disponível'),
(2, 'HB20', 'Hyundai', 2022, 'XYZ-5E78', 180.00, 'Alugado'),
(3, 'Gol', 'Volkswagen', 2020, 'DEF-9W12', 140.00, 'Alugado'),
(4, 'Civic', 'Honda', 2023, 'GHI-3F56', 250.00, 'Disponível'),
(5, 'Corolla', 'Toyota', 2022, 'JKL-7I90', 240.00, 'Alugado'),
(6, 'Fiesta', 'Ford', 2019, 'MNO-2P45', 130.00, 'Manutenção'),
(7, 'Cruze', 'Chevrolet', 2021, 'PQR-6A89', 200.00, 'Disponível'),
(8, 'Duster', 'Renault', 2022, 'STU-1Z34', 220.00, 'Alugado'),
(9, 'Toro', 'Fiat', 2023, 'VWX-5Q78', 260.00, 'Manutenção'),
(10, 'Compass', 'Jeep', 2024, 'YZA-9S12', 280.00, 'Disponível');

-- =========================
-- Tabela Manutencao
-- =========================
INSERT INTO Manutencao (idManutencao, idVeiculo, descricao, dataManutencao, custo) VALUES
(1, 1, 'Troca de óleo e revisão geral', '2024-12-09', 200.00),
(2, 1, 'Substituição de pneu', '2024-12-10', 600.00),
(3, 3, 'Troca de pastilhas de freio', '2024-12-14', 450.00),
(4, 5, 'Alinhamento e balanceamento', '2024-12-18', 150.00),
(5, 5, 'Revisão elétrica completa', '2024-12-28', 500.00),
(6, 8, 'Reparo na suspensão', '2025-01-05', 700.00),
(7, 10, 'Troca do sistema de escapamento', '2025-01-07', 750.00),
(8, 6, 'Troca de bateria', '2025-01-17', 400.00),
(9, 6, 'Substituição do filtro de ar', '2025-01-17', 120.00),
(10, 9, 'Pintura e retoques na lataria', '2025-01-28', 900.00);

-- =========================
-- Tabela Pagamento
-- =========================
INSERT INTO Pagamento (idPagamento, forma, dataPagamento, valorTotal, estado) VALUES
(1, 'Cartão', '2024-12-01', 360.00, 'Pago'),
(2, 'Cartão', '2024-12-01', 140.00, 'Pago'),
(3, 'Pix', '2024-12-05', 480.00, 'Pago'),
(4, 'Cartão', '2024-12-10', 1100.00, 'Pago'),
(5, 'Dinheiro', '2024-12-11', 1350.00, 'Pago'),
(6, 'Cartão', '2024-12-15', 2210.00, 'Pago'),
(7, 'Pix', '2024-12-20', 1080.00, 'Pago'),
(8, 'Pix', '2024-12-23', 2200.00, 'Pago'),
(9, 'Cartão', '2024-12-26', 500.00, 'Pago'),
(10, 'Pix', '2024-12-28', 840.00, 'Pago'),
(11, 'Pix', '2025-01-02', 520.00, 'Pago'),
(12, 'Dinheiro', '2025-01-05', 900.00, 'Pago'),
(13, 'Cartão', '2025-01-05', 260.00, 'Pago'),
(14, 'Cartão', '2025-01-09', 1120.00, 'Pago'),
(15, 'Pix', '2025-01-12', 600.00, 'Pago'),
(16, 'Cartão', '2025-01-13', 1680.00, 'Pendente'),
(17, 'Pix', '2025-01-16', 1040.00, 'Pago'),
(18, 'Pix', '2025-01-18', 540.00, 'Pendente'),
(19, 'Cartão', '2025-01-19', 280.00, 'Pendente'),
(20, 'Pix', '2025-01-21', 880.00, 'Pendente');

-- =========================
-- Tabela Locacao
-- =========================
INSERT INTO Locacao (idLocacao, idCliente, idPagamento, dataInicio, dataFim) VALUES
(1, 1, 1, '2024-12-01', '2024-12-03'),
(2, 2, 2, '2024-12-01', '2024-12-02'),
(3, 3, 3, '2024-12-05', '2024-12-07'),
(4, 1, 4, '2024-12-10', '2024-12-15'),
(5, 4, 5, '2024-12-11', '2024-12-20'),
(6, 2, 6, '2024-12-15', '2025-01-01'),
(7, 5, 7, '2024-12-20', '2024-12-26'),
(8, 6, 8, '2024-12-23', '2025-01-02'),
(9, 1, 9, '2024-12-26', '2024-12-28'),
(10, 3, 10, '2024-12-28', '2025-01-03'),
(11, 7, 11, '2025-01-02', '2025-01-04'),
(12, 4, 12, '2025-01-05', '2025-01-10'),
(13, 6, 13, '2025-01-05', '2025-01-07'),
(14, 8, 14, '2025-01-09', '2025-01-13'),
(15, 7, 15, '2025-01-12', '2025-01-15'),
(16, 9, 16, '2025-01-13', '2025-01-20'),
(17, 10, 17, '2025-01-16', '2025-01-20'),
(18, 9, 18, '2025-01-18', '2025-01-21'),
(19, 5, 19, '2025-01-19', '2025-01-20'),
(20, 1, 20, '2025-01-21', '2025-01-25');

-- =========================
-- Tabela LocacaoVeiculo
-- =========================
INSERT INTO LocacaoVeiculo (idLocacao, idVeiculo) VALUES
(1, 2),
(2, 3),
(3, 5),
(4, 8),
(5, 1),
(6, 6),
(7, 2),
(8, 8),
(9, 4),
(10, 3),
(11, 9),
(12, 2),
(13, 6),
(14, 10),
(15, 7),
(16, 5),
(17, 9),
(18, 2),
(19, 10),
(20, 8);