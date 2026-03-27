-- Clientes com pagamento pendente
SELECT 
    c.idCliente,
    c.nome,
    p.valorTotal AS valor_devido
FROM Pagamento p
INNER JOIN Locacao l 
    ON p.idPagamento = l.idPagamento
INNER JOIN Cliente c 
    ON l.idCliente = c.idCliente
WHERE p.estado = 'Pendente'
ORDER BY c.nome;