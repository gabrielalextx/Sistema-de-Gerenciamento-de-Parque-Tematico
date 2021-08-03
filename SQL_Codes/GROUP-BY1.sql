USE parquetematico;
SELECT VEN_TipoProdVenda, SUM(VEN_PrecoProduto) AS 'Preço Total do Tipo em Estoque'
FROM sgpt_prodsvendas
GROUP BY VEN_TipoProdVenda