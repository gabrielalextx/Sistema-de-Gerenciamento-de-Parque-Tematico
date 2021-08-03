CREATE TABLE `parquetematico`.`sgpt_alocacoes` (
  `ALOFUN_IdFuncionario` INT NOT NULL COMMENT 'Identificador único do funcionario.',
  `ALOEST_IdEstrutura` INT NOT NULL COMMENT 'Identificador único da estrutura.',
  `ALO_QuantFuncionarios` INT NOT NULL COMMENT 'Quantidade de funcionários.',
  PRIMARY KEY (`ALOFUN_IdFuncionario`, `ALOEST_IdEstrutura`),
  INDEX `ALOEST_IdEstrutura_idx` (`ALOEST_IdEstrutura` ASC) VISIBLE,
  CONSTRAINT `ALOFUN_IdFuncionario`
    FOREIGN KEY (`ALOFUN_IdFuncionario`)
    REFERENCES `parquetematico`.`sgpt_funcionarios` (`FUN_IdFuncionarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `ALOEST_IdEstrutura`
    FOREIGN KEY (`ALOEST_IdEstrutura`)
    REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'FUN abreviação para Funcionarios\nEST abreviação para Estruturas\nALO abreviação para Alocacoes\nALOFUN junção das abreviações ALO e FUN, uma chave estrangeira\nALOEST junção das abreviações ALO e EST, uma chave estrangeira';


ALTER TABLE `parquetematico`.`sgpt_alocacoes` 
CHANGE COLUMN `ALO_QuantFuncionarios` `ALO_DataAlocacao` DATETIME NOT NULL COMMENT 'Quantidade de funcionários.' ;
