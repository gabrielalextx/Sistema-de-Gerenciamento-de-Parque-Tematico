CREATE TABLE `parquetematico`.`sgpt_atracoes` (
  `ATREST_IdEstrutura` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único da estrutura.',
  `ATR_TipoAtracao` VARCHAR(40) NOT NULL COMMENT 'Tipo de Atração.',
  `ATR_AlturaMin` DECIMAL(4,2) NOT NULL COMMENT 'Altura mínima para entrar na atração.',
  `ATR_IdadeMin` TINYINT(18) NOT NULL DEFAULT 0 COMMENT 'Idade mínima para entrar na atração.',
  PRIMARY KEY (`ATREST_IdEstrutura`),
  CONSTRAINT `ATREST_IdEstrutura`
    FOREIGN KEY (`ATREST_IdEstrutura`)
    REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'EST abreviação para Estruturas\nATR abreviação para Atracoes\nATREST junção das abreviações ATR e EST, uma chave estrangeira\nPara numeros decimais P siginifica Precisão e S significa Escala';



ALTER TABLE `parquetematico`.`sgpt_atracoes` 
DROP FOREIGN KEY `ATREST_IdEstrutura`;
ALTER TABLE `parquetematico`.`sgpt_atracoes` 
CHANGE COLUMN `ATREST_IdEstrutura` `ATREST_IdEstrutura` INT NOT NULL COMMENT 'Identificador único da estrutura.' ;
ALTER TABLE `parquetematico`.`sgpt_atracoes` 
ADD CONSTRAINT `ATREST_IdEstrutura`
  FOREIGN KEY (`ATREST_IdEstrutura`)
  REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`);
