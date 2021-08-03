CREATE TABLE `parquetematico`.`sgpt_usos` (
  `USOMAN_IdProduto` INT NOT NULL COMMENT 'Referência ao atributo Identificador dos produtos em estoque, \npor ser uma herança, também é o identificador dos produtos \nde manutenção.',
  `USOFUN_IdFuncionario` INT NOT NULL COMMENT 'Identificador único do funcionário.',
  `USO_QuantUsada` INT NOT NULL COMMENT 'Quantidade de produtos usados pelo funcionário.',
  `USO_DataUso` DATETIME NOT NULL COMMENT 'Data e hora em que os produtos foram tirados do estoque pelo \nfuncionário.',
  PRIMARY KEY (`USOMAN_IdProduto`, `USOFUN_IdFuncionario`),
  INDEX `USOFUN_IdFuncionario_idx` (`USOFUN_IdFuncionario` ASC) VISIBLE,
  CONSTRAINT `USOMAN_IdProduto`
    FOREIGN KEY (`USOMAN_IdProduto`)
    REFERENCES `parquetematico`.`sgpt_prodsmanutencao` (`MANPRO_IdProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `USOFUN_IdFuncionario`
    FOREIGN KEY (`USOFUN_IdFuncionario`)
    REFERENCES `parquetematico`.`sgpt_funcionarios` (`FUN_IdFuncionarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'MAN abreviação para ProdsManutencao\nFUN abreviação para Funcionarios\nUSO abreviação para Usos\nUSOMAN junção das abreviações USO e MAN, uma chave estrangeira\nUSOFUN junção das abreviações USO e FUN, uma chave estrangeira';


ALTER TABLE `parquetematico`.`sgpt_usos` 
DROP FOREIGN KEY `USOMAN_IdProduto`;


ALTER TABLE `parquetematico`.`sgpt_usos` 
ADD CONSTRAINT `USOMAN_IdProduto`
  FOREIGN KEY (`USOMAN_IdProduto`)
  REFERENCES `parquetematico`.`sgpt_prodsmanutencao` (`MANPRO_IdProduto`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
