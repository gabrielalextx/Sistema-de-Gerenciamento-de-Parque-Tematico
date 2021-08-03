CREATE TABLE `parquetematico`.`sgpt_compras` (
  `CMPVIS_CPF` CHAR(11) NOT NULL COMMENT 'CPF do visitante, seu identificador único.',
  `CMPEST_IdEstrutura` INT NOT NULL COMMENT 'Identificador único da estrutura.',
  `CMPVEN_IdProduto` INT NOT NULL COMMENT 'Referência ao atributo Identificador dos produtos em\n estoque, por ser uma herança, também é o \nidentificador dos produtos de manutenção.',
  `CMP_DataCompra` DATETIME NOT NULL COMMENT 'Data da compra dos produtos.',
  `CMP_QuantCompra` INT NOT NULL COMMENT 'Quantidade de produtos comprado.',
  PRIMARY KEY (`CMPVIS_CPF`, `CMPEST_IdEstrutura`, `CMPVEN_IdProduto`),
  INDEX `CMPEST_IdEstrutura_idx` (`CMPEST_IdEstrutura` ASC) VISIBLE,
  INDEX `CMPVEN_IdProduto_idx` (`CMPVEN_IdProduto` ASC) VISIBLE,
  CONSTRAINT `CMPVIS_CPF`
    FOREIGN KEY (`CMPVIS_CPF`)
    REFERENCES `parquetematico`.`sgpt_visitantes` (`VIS_CPF`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CMPEST_IdEstrutura`
    FOREIGN KEY (`CMPEST_IdEstrutura`)
    REFERENCES `parquetematico`.`sgpt_estruturas` (`EST_IdEstrutura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CMPVEN_IdProduto`
    FOREIGN KEY (`CMPVEN_IdProduto`)
    REFERENCES `parquetematico`.`sgpt_prodsvendas` (`VENPRO_IdProduto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
COMMENT = 'VIS abreviação para Visitantes\nEST abreviação para Estruturas\nVEN abreviação para ProdsVendas\nCMP abreviação para ProdsVendas\nCMPVIS junção das abreviações CMP e VIS, uma chave estrangeira\nCMPEST junção das abreviações CMP e EST,  uma chave estrangeira\nCMPVEN junção das abreviações CMP e VEN,  uma chave estrangeira';



ALTER TABLE `parquetematico`.`sgpt_compras` 
DROP FOREIGN KEY `CMPVEN_IdProduto`;
ALTER TABLE `parquetematico`.`sgpt_compras` 
DROP INDEX `CMPVEN_IdProduto_idx` ;
;



ALTER TABLE `parquetematico`.`sgpt_compras` 
ADD INDEX `CMPVEN_IdProduto_idx` (`CMPVEN_IdProduto` ASC) VISIBLE;
;
ALTER TABLE `parquetematico`.`sgpt_compras` 
ADD CONSTRAINT `CMPVEN_IdProduto`
  FOREIGN KEY (`CMPVEN_IdProduto`)
  REFERENCES `parquetematico`.`sgpt_prodsvendas` (`VENPRO_IdProduto`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
  
  
  ALTER TABLE `parquetematico`.`sgpt_compras` 
DROP FOREIGN KEY `CMPVEN_IdProduto`;
ALTER TABLE `parquetematico`.`sgpt_compras` 
ADD INDEX `CMPVEN_IdProduto_idx` (`CMPVEN_IdProduto` ASC) VISIBLE,
DROP INDEX `CMPVEN_IdProduto_idx` ;
;
ALTER TABLE `parquetematico`.`sgpt_compras` 
ADD CONSTRAINT `CMPVEN_IdProduto`
  FOREIGN KEY (`CMPVEN_IdProduto`)
  REFERENCES `parquetematico`.`sgpt_produtos` (`PRO_IdProdutos`);

