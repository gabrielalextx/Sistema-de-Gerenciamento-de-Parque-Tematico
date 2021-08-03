USE parquetematico;
SELECT * FROM sgpt_usos
WHERE EXISTS (SELECT * FROM sgpt_usos, sgpt_prodsmanutencao 
	WHERE USOMAN_IdProduto = MANPRO_IdProduto);