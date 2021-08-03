USE parquetematico;
SELECT ATREST_IdEstrutura AS IdEstrutura, ATR_TipoAtracao AS TipoEstrutura FROM sgpt_atracoes
UNION
SELECT COMEST_IdEstrutura, COM_TipoComodidade FROM sgpt_comodidades;