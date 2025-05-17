-- Top 5 produtos por quantidade vendida
SELECT 
    p.produto_id,
    p.nome AS produto_nome,
    p.categoria,
    SUM(v.quantidade) AS total_quantidade,
    SUM(v.quantidade * p.preco_unitario) AS faturamento_total
FROM 
    vendas v
JOIN 
    produtos p ON v.produto_id = p.produto_id
GROUP BY 
    p.produto_id, p.nome, p.categoria
ORDER BY 
    total_quantidade DESC
LIMIT 5;