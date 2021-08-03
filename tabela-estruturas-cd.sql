CREATE TABLE `parquetematico`.`sgpt_estruturas` (
  `EST_IdEstrutura` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único da estrutura.',
  `EST_Nome` VARCHAR(40) NOT NULL COMMENT 'Nome da estrutura.',
  `EST_Capacidade` INT NOT NULL DEFAULT 30 COMMENT 'Capacidade máxima de visitantes em uma estrutura.',
  PRIMARY KEY (`EST_IdEstrutura`))
COMMENT = 'EST abreviação para Estruturas';
