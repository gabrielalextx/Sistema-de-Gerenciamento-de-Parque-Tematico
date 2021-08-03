USE parquetematico;
SELECT * FROM sgpt_estruturas
WHERE NOT EXISTS (
SELECT VSTEST_IdEstrutura FROM sgpt_visitas 
WHERE VSTEST_IdEstrutura BETWEEN 1 AND 3) 
AND EST_Capacidade > 40;