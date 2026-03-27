-- Quantidade de vezes que cada veículo foi alugado
SELECT 
    v.idVeiculo,
    v.modelo,
    v.marca,
    COUNT(lv.idVeiculo) AS total_alugueis
FROM Veiculo v
LEFT JOIN LocacaoVeiculo lv 
    ON v.idVeiculo = lv.idVeiculo
GROUP BY v.idVeiculo, v.modelo, v.marca
ORDER BY total_alugueis DESC;