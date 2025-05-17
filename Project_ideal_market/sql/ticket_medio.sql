SELECT 
    c.cliente_id,
    c.nome,
    ROUND(AVG(v.quantidade * p.preco_unitario), 2) AS ticket_medio
FROM 
    vendas v
JOIN 
    clientes c ON v.cliente_id = c.cliente_id
JOIN 
    produtos p ON v.produto_id = p.produto_id
GROUP BY 
    c.cliente_id, c.nome
ORDER BY 
    ticket_medio DESC;