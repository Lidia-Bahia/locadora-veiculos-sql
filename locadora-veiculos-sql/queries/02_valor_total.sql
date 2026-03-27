-- Valor total arrecadado (apenas pagamentos efetuados com sucesso)
SELECT 
    SUM(valorTotal) AS valor_total_arrecadado
FROM Pagamento 
WHERE estado = 'Pago';