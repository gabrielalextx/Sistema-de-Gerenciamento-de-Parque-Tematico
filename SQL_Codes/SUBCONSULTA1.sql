USE parquetematico;
SELECT PRO_IdProdutos, PRO_Nome
FROM sgpt_produtos
WHERE PRO_IdProdutos = 
	(SELECT VENPRO_IdProduto
	FROM sgpt_prodsvendas
	WHERE VEN_TipoProdVenda = 'Comida');