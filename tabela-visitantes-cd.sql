CREATE TABLE `parquetematico`.`sgpt_visitantes` (
  `VIS_CPF` CHAR(11) NOT NULL COMMENT 'CPF do visitante, seu identificador único.',
  `VIS_Altura` DECIMAL(4,2) NOT NULL COMMENT 'Altura do visitante. Utilizado para verificar o acesso do \nvisitante a determinadas atrações.',
  `VIS_DataNasc` DATE NOT NULL COMMENT 'Data de nascimento do Visitante. Utilizado para \ncalcular sua idade para certas atrações.',
  `VIS_TipoVisitante` CHAR(1) NOT NULL DEFAULT 'S' COMMENT 'Tipo do visitante (baseado no passaporte \nadquirido por ele no sistema online).',
  PRIMARY KEY (`VIS_CPF`))
ENGINE = InnoDB;

ALTER TABLE `parquetematico`.`sgpt_visitantes` 
COMMENT = 'VIS abreviação para Visitantes\nEm domínio TipoVisitante as letras representam respectivamente:\nSimples, Visitante e Hóspede.\nPara numeros decimais P siginifica Precisão e S significa Escala' ;


ALTER TABLE `parquetematico`.`sgpt_visitantes` 
ADD COLUMN `VIS_Nome` VARCHAR(40) NOT NULL COMMENT 'Nome do Visitante.' AFTER `VIS_TipoVisitante`;
