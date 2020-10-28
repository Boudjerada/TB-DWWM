DROP DATABASE evalBDexo1;

CREATE DATABASE evalBDexo1;

USE evalBDexo1;

CREATE TABLE `Client` (
  `cli_num` int NOT NULL,
  `cli_nom` varchar(25) NOT NULL,
  `cli_adresse` VARCHAR(50) NOT NULL,
  `cli_tel` varchar(30) NOT NULL,
PRIMARY KEY (`cli_num`)
);

CREATE INDEX nom 
ON `Client` (`cli_nom` ASC);

CREATE TABLE `Produit` (
  `pro_num` int NOT NULL,
  `pro_libelle` VARCHAR(50) NOT NULL,
  `pro_description` VARCHAR(50),
PRIMARY KEY (`pro_num`)
);

CREATE TABLE `Commande` (
  `com_num` int NOT NULL AUTO_INCREMENT,
  `cli_num` int DEFAULT NULL,
  `com_date` datetime NOT NULL,
  `com_obs` varchar(50),
  PRIMARY KEY (`com_num`),
  KEY `com_num` (`com_num`),
  CONSTRAINT `cli_num_ibfk_3` FOREIGN KEY (`cli_num`) REFERENCES `Client` (`cli_num`)
);

CREATE TABLE `est_compose` (
  `com_num` int NOT NULL,
  `pro_num` int NOT NULL,
  `est_qte` int Not NULL,
  PRIMARY KEY (`com_num`,`pro_num`),
  KEY `pro_num` (`pro_num`),
  CONSTRAINT `est_compose_ibfk_1` FOREIGN KEY (`pro_num`) REFERENCES `Produit` (`pro_num`),
  CONSTRAINT `est_compose_ibfk_2` FOREIGN KEY (`com_num`) REFERENCES `Commande` (`com_num`)
) ;




