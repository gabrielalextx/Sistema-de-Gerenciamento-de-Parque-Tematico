USE parquetematico;
SELECT VIS_CPF FROM sgpt_visitantes
WHERE EXISTS (SELECT * FROM sgpt_visitas, sgpt_visitantes WHERE VSTVIS_CPF = VIS_CPF) AND VIS_TipoVisitante = 'H';