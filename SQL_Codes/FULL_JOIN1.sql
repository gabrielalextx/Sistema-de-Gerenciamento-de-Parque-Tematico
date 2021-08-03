USE parquetematico;
SELECT MANPRO_IdProduto, MAN_QuantManutencao, MAN_TipoManutencao, PRO_Nome, PRO_IdProdutos
FROM sgpt_prodsmanutencao
FULL JOIN sgpt_produtos
ON PRO_IdProdutos = MANPRO_IdProduto;