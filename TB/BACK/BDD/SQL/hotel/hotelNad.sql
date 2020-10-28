DROP DATABASE IF EXISTS hotel;

CREATE DATABASE hotel;

USE hotel;

CREATE TABLE Clients(
    cl_adresse_client VARCHAR(100),
    cl_nom_client VARCHAR(30),
    cl_prenom_client VARCHAR(30),
    cl_num_client INT NOT NULL AUTO_INCREMENT,
    constraint Clients_PK PRIMARY KEY (cl_num_client)
    );

CREATE TABLE Station(
    sta_num_station INT NOT NULL AUTO_INCREMENT,
    sta_nom_station VARCHAR(30),
    constraint Station_PK PRIMARY KEY (sta_num_station)
);

CREATE TABLE Hotel(
   hot_capacite_hotel INT NOT NULL,
   hot_categorie_hotel INT NOT NULL,
   hot_nom_hotel VARCHAR(30),
   hot_adresse_hotel VARCHAR(100),
   hot_num_hotel INT UNIQUE NOT NULL AUTO_INCREMENT,
   hot_num_station INT,
   CONSTRAINT Hotel_PK PRIMARY KEY (hot_num_hotel),
   CONSTRAINT hotel_Station_FK FOREIGN KEY (hot_num_station) REFERENCES Station(sta_num_station)
    );


CREATE TABLE Chambre(
    ch_capacite_chambre INT NOT NULL,
    ch_degre_confort INT,
    ch_exposition VARCHAR(30),
    ch_type_chambre VARCHAR(30),
    ch_num_chambre INT NOT NULL AUTO_INCREMENT,
    ch_num_hotel INT NOT NULL,
    CONSTRAINT Chambre_PK PRIMARY KEY (ch_num_chambre),
    CONSTRAINT Chambre_Hotel_FK FOREIGN KEY (ch_num_hotel) REFERENCES Hotel(hot_num_hotel)
    );



CREATE TABLE Reservation(
   res_num_chambre int NOT NULL,
   res_num_client int  NOT NULL,
   res_date_debut date,
   res_date_fin date,
   res_date_reservation date,
   res_montant_arrhes float,
   res_prix_total float, 
   CONSTRAINT Reservation_PK PRIMARY KEY (res_num_chambre, res_num_client),  /*la clé primaire est sur 2 colonnes, l'unicité est sur 2 colonnes*/
   CONSTRAINT Reservation_Chambre_FK FOREIGN KEY (res_num_chambre) REFERENCES Chambre(ch_num_chambre),
   CONSTRAINT Reservation_Clients_FK FOREIGN KEY (res_num_client) REFERENCES Clients(cl_num_client)
  );

CREATE INDEX ch_cli ON Reservation(res_num_chambre, res_num_client);  /*index pour la clé primaire de deux colonnes*/

INSERT INTO clients VALUES
	('11 chemin mont thomas 80090 amiens','boudjerada','nadir','1'),
	('15 rue jean raimond comminges 34080 montpellier','sadaoui','attika','2'),
	('15 rue president kennedy 80000 amiens','boudjerada','lila','3'),
	('2 rue bossuet apt 406 80080 amiens','boudjerada','rabia','4');
	
INSERT INTO station VALUES
	('1','montpellier'),
	('2','amiens'),
	('3','cannes'),
	('4','nice');
	
INSERT INTO hotel VALUES
	('40','4','carlton','15 rue leclerc 34000 montpellier','1','1'),
	('35','2','ibis','30 rue jules barni 80000 amiens','2','2'),
	('60','1','formule 1','12 rue du general foch 80000 amiens','3','2');
	
INSERT INTO chambre VALUES
	('3','1','sud','triple','1','2'),
	('3','2','nord','triple','2','2'),
	('2','2','ouest','double','3','1'),
	('1','1','ouest','solo','4','3'),
	('2','3','est','double','5','1'),
	('4','2','nord','familial','6','2');
	
INSERT INTO reservation VALUES
 	('2','4','2020-11-14','2020-11-21','2020-05-05','150','550'),
 	('3','2','2020-08-10','2020-08-14','2020-06-17','50','450'),
 	('1','1','2021-07-14','2021-07-21','2020-05-05','30','350'),
 	('5','1','2020-12-14','2020-12-21','2020-09-01','200','500'),
 	('4','3','2020-11-23','2020-10-30','2020-06-05','150','650');
 	