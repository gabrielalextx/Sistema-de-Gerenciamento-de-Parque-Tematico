CREATE TABLE `parquetematico`.`sgpt_produtos` (
  `PRO_IdProdutos` INT NOT NULL AUTO_INCREMENT COMMENT 'Referência ao atributo Identificador dos produtos\n em estoque, por ser uma herança, também é o \nidentificador dos produtos de manutenção.',
  `PRO_Nome` VARCHAR(40) NOT NULL COMMENT 'Nome do produto',
  PRIMARY KEY (`PRO_IdProdutos`))
COMMENT = 'PRO abreviação para Produtos';
