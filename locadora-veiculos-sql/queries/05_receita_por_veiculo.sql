SELECT 
    v.modelo,
    v.marca,
    SUM(p.valorTotal) AS receita
FROM Veiculo v
JOIN LocacaoVeiculo lv ON v.idVeiculo = lv.idVeiculo
JOIN Locacao l ON lv.idLocacao = l.idLocacao
JOIN Pagamento p ON l.idPagamento = p.idPagamento
WHERE p.estado = 'Pago'
GROUP BY v.modelo, v.marca
ORDER BY receita DESC;