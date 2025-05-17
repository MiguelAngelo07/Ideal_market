SELECT 
    v.venda_id,
    c.nome AS cliente_nome,
    c.cidade AS cliente_cidade,
    p.nome AS produto_nome,
    p.categoria AS produto_categoria,
    v.quantidade,
    (v.quantidade * p.preco_unitario) AS valor_total,
    v.data_venda
FROM 
    vendas v
JOIN 
    clientes c ON v.cliente_id = c.cliente_id
JOIN 
    produtos p ON v.produto_id = p.produto_id
ORDER BY 
    v.data_venda DESC;