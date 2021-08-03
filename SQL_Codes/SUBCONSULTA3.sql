USE parquetematico;
SELECT * FROM sgpt_visitas
INNER JOIN sgpt_visitantes
ON VIS_CPF = VSTVIS_CPF;