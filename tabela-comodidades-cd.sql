CREATE TABLE `parquetematico`.`sgpt_comodidades` (
  `COMEST_IdEstrutura` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único da estrutura.',
  `COM_TipoComodidade` VARCHAR(40) NOT NULL COMMENT 'Tipo de Comodidade.',
  PRIMARY KEY (`COMEST_IdEstrutura`),
  CONSTRAINT `COMEST_IdEstrutura`
    FOREIGN KEY (`COMEST_IdEstrutura`)
    REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'EST abreviação para Estruturas\nCOM abreviação de Comodidades\nCOMEST junção das abreviações COM e EST, uma chave estrangeira';



ALTER TABLE `parquetematico`.`sgpt_comodidades` 
DROP FOREIGN KEY `COMEST_IdEstrutura`;
ALTER TABLE `parquetematico`.`sgpt_comodidades` 
CHANGE COLUMN `COMEST_IdEstrutura` `COMEST_IdEstrutura` INT NOT NULL COMMENT 'Identificador único da estrutura.' ;
ALTER TABLE `parquetematico`.`sgpt_comodidades` 
ADD CONSTRAINT `COMEST_IdEstrutura`
  FOREIGN KEY (`COMEST_IdEstrutura`)
  REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`);
