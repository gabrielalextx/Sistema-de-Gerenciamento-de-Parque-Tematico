USE parquetematico;
SELECT * FROM sgpt_prodsvendas
WHERE NOT EXISTS (
SELECT CMPVEN_IdProduto FROM sgpt_compras
WHERE CMPVEN_IdProduto BETWEEN 4 AND 6) 
AND VEN_TipoProdVenda IN ('Bebida');