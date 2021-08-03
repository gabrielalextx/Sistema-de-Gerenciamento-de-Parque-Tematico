USE parquetematico;
SELECT * FROM sgpt_visitantes 
WHERE VIS_Altura NOT IN (1.45, 1.65, 1.85);