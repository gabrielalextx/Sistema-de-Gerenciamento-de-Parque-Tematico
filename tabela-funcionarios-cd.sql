CREATE TABLE `parquetematico`.`sgpt_funcionarios` (
  `FUN_IdFuncionarios` INT NOT NULL AUTO_INCREMENT COMMENT 'Identificador único do funcionário',
  `FUN_Nome` VARCHAR(50) NOT NULL COMMENT 'Nome do funcionário',
  `FUN_TipoFuncionario` CHAR(1) NOT NULL COMMENT 'Especialização do funcionário\nFormato T/S/O/G/A',
  PRIMARY KEY (`FUN_IdFuncionarios`))
COMMENT = 'FUN abreviação para Funcionarios\nEm domínio TipoFuncionario as letras representam respectivamente:\nTécnico de Manutenção, Seguranças, Operadores, Gerentes e Atores.';


ALTER TABLE `parquetematico`.`sgpt_alocacoes` 
ADD COLUMN `ALOFUN_IdFuncionarioG` INT NOT NULL COMMENT 'Identificador único do funcionario Gerente.' AFTER `ALO_DataAlocacao`,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`ALOFUN_IdFuncionario`, `ALOEST_IdEstrutura`, `ALOFUN_IdFuncionarioG`),
ADD INDEX `ALOFUN_IdFuncionarioG_idx` (`ALOFUN_IdFuncionarioG` ASC) VISIBLE;
;
ALTER TABLE `parquetematico`.`sgpt_alocacoes` 
ADD CONSTRAINT `ALOFUN_IdFuncionarioG`
  FOREIGN KEY (`ALOFUN_IdFuncionarioG`)
  REFERENCES `parquetematico`.`sgpt_funcionarios` (`FUN_IdFuncionarios`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `parquetematico`.`sgpt_alocacoes` 
CHANGE COLUMN `ALOFUN_IdFuncionarioG` `ALOFUN_IdFuncionarioG` INT NOT NULL COMMENT 'Identificador único do funcionario Gerente.' AFTER `ALOEST_IdEstrutura`;
