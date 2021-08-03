USE parquetematico;
SELECT VENPRO_IdProduto, AVG(VEN_PrecoProduto) FROM sgpt_prodsvendas
GROUP BY VENPRO_IdProduto  HAVING AVG(VEN_PrecoProduto) < (SELECT MAX(AVG(VEN_PrecoProduto)) FROM 
sgpt_prodsvendas GROUP BY VENPRO_IdProduto) ORDER BY VENPRO_IdProduto;