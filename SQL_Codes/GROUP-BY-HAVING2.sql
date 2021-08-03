USE parquetematico;
SELECT MAN_TipoManutencao, SUM(MAN_QuantManutencao) AS 'Quantidade Total do Tipo em Estoque'
FROM sgpt_prodsmanutencao
GROUP BY MAN_TipoManutencao
HAVING SUM(MAN_QuantManutencao) > 50