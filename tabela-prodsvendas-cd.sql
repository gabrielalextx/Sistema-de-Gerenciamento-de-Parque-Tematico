CREATE TABLE `parquetematico`.`sgpt_prodsvendas` (
  `VENPRO_IdProduto` INT NOT NULL AUTO_INCREMENT COMMENT 'Referência ao atributo Identificador dos \nprodutos em estoque, por ser uma herança,\ntambém é o identificador dos produtos de manutenção.',
  `VEN_QuantItens` INT NOT NULL COMMENT 'Quantidade de produtos para venda armazenados.',
  `VEN_PrecoProduto` DECIMAL(8,2) NOT NULL DEFAULT 1.00 COMMENT 'Preço do produto a ser vendido.',
  `VEN_TipoProdVenda` VARCHAR(20) NOT NULL COMMENT 'Tipo do produto a ser vendido.',
  PRIMARY KEY (`VENPRO_IdProduto`),
  CONSTRAINT `VENPRO_IdProduto`
    FOREIGN KEY (`VENPRO_IdProduto`)
    REFERENCES `parquetematico`.`sgpt_produtos` (`PRO_IdProdutos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'PRO abreviação para Produtos\nVEN abreviação para ProdsVendas\nVENPRO junção das abreviações VEN e PRO, uma chave estrangeira';



ALTER TABLE `parquetematico`.`sgpt_prodsvendas` 
CHANGE COLUMN `VENPRO_IdProduto` `VENPRO_IdProduto` INT NOT NULL COMMENT 'Referência ao atributo Identificador dos \\nprodutos em estoque, por ser uma herança,\\ntambém é o identificador dos produtos de manutenção.' ;
ALTER TABLE `parquetematico`.`sgpt_prodsvendas` 
ADD CONSTRAINT `VENPRO_IdProduto`
  FOREIGN KEY (`VENPRO_IdProduto`)
  REFERENCES `parquetematico`.`sgpt_produtos` (`PRO_IdProdutos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


ALTER TABLE `parquetematico`.`sgpt_prodsvendas` 
CHANGE COLUMN `VENPRO_IdProduto` `VENPRO_IdProduto` INT NOT NULL COMMENT 'Referência ao atributo Identificador dos \\nprodutos em estoque, por ser uma herança,\\ntambém é o identificador dos produtos de manutenção.' ;
ALTER TABLE `parquetematico`.`sgpt_prodsvendas` 
ADD CONSTRAINT `VENPRO_IdProduto`
  FOREIGN KEY (`VENPRO_IdProduto`)
  REFERENCES `parquetematico`.`sgpt_produtos` (`PRO_IdProdutos`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
