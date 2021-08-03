USE parquetematico;
SELECT MANPRO_IdProduto, MAN_QuantManutencao, MAN_TipoManutencao, PRO_Nome, PRO_IdProdutos
FROM sgpt_produtos
RIGHT JOIN sgpt_prodsmanutencao
ON PRO_IdProdutos = MANPRO_IdProduto;