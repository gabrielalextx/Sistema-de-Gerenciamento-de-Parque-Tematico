CREATE TABLE `parquetematico`.`sgpt_prodsmanutencao` (
  `MANPRO_IdProduto` INT NOT NULL AUTO_INCREMENT COMMENT 'Referência ao atributo Identificador dos produtos em estoque, \npor ser uma herança, também é o identificador dos produtos \nde manutenção.',
  `MAN_QuantManutencao` INT NOT NULL COMMENT 'Quantidade dos produtos de Manutenção armazenados.',
  `MAN_TipoManutencao` VARCHAR(20) NOT NULL COMMENT 'Tipo do produto de manutenção.',
  PRIMARY KEY (`MANPRO_IdProduto`),
  CONSTRAINT `MANPRO_IdProduto`
    FOREIGN KEY (`MANPRO_IdProduto`)
    REFERENCES `parquetematico`.`sgpt_produtos` (`PRO_IdProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'PRO abreviação para Produtos\nMAN abreviação para ProdsManutencao\nMANPRO junção das abreviações MAN e PRO, uma chave estrangeira';



ALTER TABLE `parquetematico`.`sgpt_prodsmanutencao` 
CHANGE COLUMN `MANPRO_IdProduto` `MANPRO_IdProduto` INT NOT NULL COMMENT 'Referência ao atributo Identificador dos produtos em estoque, \\npor ser uma herança, também é o identificador dos produtos \\nde manutenção.' ;
