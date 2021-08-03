USE parquetematico;
SELECT MANPRO_IdProduto AS IdProduto, MAN_TipoManutencao AS TipoEstrutura FROM sgpt_prodsmanutencao
UNION
SELECT VENPRO_IdProduto, VEN_TipoProdVenda FROM sgpt_prodsvendas;