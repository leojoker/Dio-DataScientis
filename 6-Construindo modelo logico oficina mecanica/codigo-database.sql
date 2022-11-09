CREATE DATABASE oficina_mecanica;
USE oficina_mecanica;

CREATE TABLE `registro` (
  `idRegistro` int NOT NULL AUTO_INCREMENT,
  `automovel` varchar(100) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `placa` char(7) DEFAULT NULL,
  `proprietario` varchar(50) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idRegistro`)
);

CREATE TABLE `pecas` (
  `idPecas` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `quantidade` int DEFAULT '0',
  PRIMARY KEY (`idPecas`)
);

CREATE TABLE `mao_de_obra` (
  `idMaoObra` int NOT NULL AUTO_INCREMENT,
  `servico` varchar(50) DEFAULT NULL,
  `pecasM` int DEFAULT NULL,
  PRIMARY KEY (`idMaoObra`),
  KEY `fk_pecas_pecas` (`pecasM`),
  CONSTRAINT `fk_pecas_pecas` FOREIGN KEY (`pecasM`) REFERENCES `pecas` (`idPecas`)
);

CREATE TABLE `mecanicos` (
  `idMecanico` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `especialidade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMecanico`)
);

CREATE TABLE `ordem_servico` (
  `idOS` int NOT NULL AUTO_INCREMENT,
  `data_emissao` timestamp NULL DEFAULT NULL,
  `valor` float DEFAULT NULL,
  `status_servico` enum('Em andamento','Cancelado','Aceito','Finalizado') DEFAULT NULL,
  `data_conclusao` date DEFAULT NULL,
  `OS_idMecanico` int DEFAULT NULL,
  `OS_idRegistro` int DEFAULT NULL,
  `OS_mao_de_obra` int DEFAULT NULL,
  PRIMARY KEY (`idOS`),
  KEY `fk_OS_idMecanico` (`OS_idMecanico`),
  KEY `fk_OS_idRegistro` (`OS_idRegistro`),
  KEY `fk_OS_mao_obra` (`OS_mao_de_obra`),
  CONSTRAINT `fk_OS_idMecanico` FOREIGN KEY (`OS_idMecanico`) REFERENCES `mecanicos` (`idMecanico`),
  CONSTRAINT `fk_OS_idRegistro` FOREIGN KEY (`OS_idRegistro`) REFERENCES `registro` (`idRegistro`),
  CONSTRAINT `fk_OS_mao_obra` FOREIGN KEY (`OS_mao_de_obra`) REFERENCES `mao_de_obra` (`idMaoObra`)
);