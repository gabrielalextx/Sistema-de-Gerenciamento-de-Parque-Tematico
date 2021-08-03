USE parquetematico;
SELECT COMEST_IdEstrutura AS IdEstrutura, COM_TipoComodidade AS TipoEstrutura FROM sgpt_comodidades
UNION ALL
SELECT ATREST_IdEstrutura, ATR_TipoAtracao FROM sgpt_atracoes;