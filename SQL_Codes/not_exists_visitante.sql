CREATE TABLE IF NOT EXISTS`parquetematico`.`sgpt_visitantes` (
  `VIS_CPF` CHAR(11) NOT NULL COMMENT 'CPF do visitante, seu identificador único.',
  `VIS_Altura` DECIMAL(4,2) NOT NULL COMMENT 'Altura do visitante. Utilizado para verificar o acesso do \nvisitante a determinadas atrações.',
  `VIS_DataNasc` DATE NOT NULL COMMENT 'Data de nascimento do Visitante. Utilizado para \ncalcular sua idade para certas atrações.',
  `VIS_TipoVisitante` CHAR(1) NOT NULL DEFAULT 'S' COMMENT 'Tipo do visitante (baseado no passaporte \nadquirido por ele no sistema online).',
  `VIS_Nome` VARCHAR(40) NOT NULL COMMENT 'Nome do Visitante.',
  PRIMARY KEY (`VIS_CPF`))
ENGINE = InnoDB;

USE parquetematico;
INSERT INTO sgpt_visitantes 
VALUES 
('12345678901', 1.85, '1973-10-17', 'S', 'João Cabral da Silva'),
('09876543210', 1.45, '1984-05-10', 'V', 'Ednaldo Pereira dos Santos'), 
('12312345645', 1.65, '1994-11-23', 'H', 'Helena Malina de Alencar'),
('11122233300', 1.68, '1977-02-06', 'S', 'Antônio Castro Soares'),
('02940500503', 1.74, '1968-04-11', 'V', 'Mahakesh Abdul Saliz'),
('00239881002', 1.56, '1993-12-25', 'H', 'Milena De Castro Pereira');

