USE parquetematico;
SELECT * FROM sgpt_estruturas WHERE EST_IdEstrutura NOT IN 
(SELECT VSTEST_IdEstrutura FROM sgpt_visitas GROUP BY VSTEST_IdEstrutura);