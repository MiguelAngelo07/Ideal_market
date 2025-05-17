SELECT 
    c.cliente_id,
    c.nome AS cliente_nome,
    c.cidade,
    SUM(v.quantidade * p.preco_unitario) AS faturamento_total
FROM 
    vendas v
JOIN 
    clientes c ON v.cliente_id = c.cliente_id
JOIN 
    produtos p ON v.produto_id = p.produto_id
GROUP BY 
    c.cliente_id, c.nome, c.cidade
ORDER BY 
    faturamento_total DESC
LIMIT 5;