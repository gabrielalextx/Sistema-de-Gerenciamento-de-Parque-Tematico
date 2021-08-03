CREATE TABLE `parquetematico`.`sgpt_visitas` (
  `VSTVIS_CPF` CHAR(11) NOT NULL COMMENT 'CPF do visitante, seu identificador único.',
  `VSTEST_IdEstrutura` INT NOT NULL COMMENT 'Identificador único da estrutura.',
  `VST_DataVisita` DATETIME NOT NULL,
  PRIMARY KEY (`VSTVIS_CPF`, `VSTEST_IdEstrutura`),
  INDEX `VSTEST_IdEstrutura_idx` (`VSTEST_IdEstrutura` ASC) VISIBLE,
  CONSTRAINT `VSTVIS_CPF`
    FOREIGN KEY (`VSTVIS_CPF`)
    REFERENCES `parquetematico`.`sgpt_visitantes` (`VIS_CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `VSTEST_IdEstrutura`
    FOREIGN KEY (`VSTEST_IdEstrutura`)
    REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'VIS abreviação para Visitantes\nEST abreviação para Estruturas\nVST abreviação para Visitas\nVSTVIS junção das abreviações VST e VIS, uma chave estrangeira\nVSTEST junção das abreviações VST e EST, uma chave estrangeira';
