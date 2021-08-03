USE parquetematico;
SELECT EST_Nome, EST_IdEstrutura, COM_TipoComodidade
FROM sgpt_estruturas
INNER JOIN sgpt_comodidades
ON EST_IdEstrutura = COMEST_IdEstrutura;