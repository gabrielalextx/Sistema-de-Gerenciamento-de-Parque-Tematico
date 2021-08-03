USE parquetematico;
SELECT EST_Nome, EST_IdEstrutura, ATR_TipoAtracao, ATR_AlturaMin, ATR_IdadeMin, COM_TipoComodidade
FROM sgpt_estruturas
INNER JOIN sgpt_atracoes
ON EST_IdEstrutura = ATREST_IdEstrutura 
INNER JOIN sgpt_comodidades
ON EST_IdEstrutura = COMEST_IdEstrutura;