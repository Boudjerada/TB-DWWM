DROP DATABASE hotelexo;

CREATE DATABASE hotelexo; 

USE hotelexo;

CREATE TABLE station (
	sta_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	sta_nom VARCHAR(50) NOT NULL,
	sta_altitude INT
);

CREATE TABLE hotel (
	hot_id 			INT AUTO_INCREMENT NOT NULL,
	hot_sta_id 		INT NOT NULL,
	hot_nom 		VARCHAR(50) NOT NULL,
	hot_categorie 	INT NOT NULL,
	hot_adresse		VARCHAR(50) NOT NULL,
	hot_ville 		VARCHAR(50) NOT NULL, 
	FOREIGN KEY (hot_sta_id) REFERENCES station(sta_id),
	PRIMARY KEY (hot_id)
);

CREATE TABLE chambre (
	cha_id INT NOT NULL AUTO_INCREMENT ,
	cha_hot_id INT NOT NULL,
	cha_numero INT NOT NULL,
	cha_capacite INT NOT NULL,
	cha_type INT NOT NULL,
	FOREIGN KEY (cha_hot_id) REFERENCES hotel(hot_id),
	PRIMARY KEY (cha_id)
);

CREATE TABLE CLIENT (
	cli_id INT NOT NULL AUTO_INCREMENT ,
	cli_nom VARCHAR(50),
	cli_prenom VARCHAR(50),
	cli_adresse VARCHAR(50),
	cli_ville VARCHAR(50),
	PRIMARY KEY (cli_id)
);

CREATE TABLE reservation (
	res_id INT NOT NULL AUTO_INCREMENT,
	res_cha_id INT NOT NULL ,
	res_cli_id INT NOT NULL ,
	res_date DATETIME NOT NULL,
	res_date_debut DATETIME NOT NULL,
	res_date_fin DATETIME NOT NULL,
	res_prix DECIMAL(6,2) NOT NULL,
	res_arrhes DECIMAL(6,2),
	FOREIGN KEY (res_cha_id) REFERENCES chambre(cha_id),
	FOREIGN KEY (res_cli_id) REFERENCES client(cli_id),
	PRIMARY KEY (res_id)
);

INSERT INTO station (sta_id, sta_nom, sta_altitude) VALUES (1, 'La Montagne', 2500);
INSERT INTO station (sta_id, sta_nom, sta_altitude) VALUES (2, 'Le Sud', 200);
INSERT INTO station (sta_id, sta_nom, sta_altitude) VALUES (3, 'La Plage', 10);

INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (1, 1, 'Le Magnifique', 3, 'rue du bas', 'Pralo');
INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (2, 1, 'Hotel du haut', 1, 'rue du haut', 'Pralo');
INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (3, 2, 'Le Narval', 3, 'place de la liberation', 'Vonten');
INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (4, 2, 'Les Pissenlis', 4, 'place du 14 juillet', 'Bretou');
INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (5, 2, 'RR Hotel', 5, 'place du bas', 'Bretou');
INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (6, 2, 'La Brique', 2, 'place du haut', 'Bretou');
INSERT INTO hotel (hot_id, hot_sta_id, hot_nom, hot_categorie, hot_adresse, hot_ville) VALUES (7, 3, 'Le Beau Rivage', 3, 'place du centre', 'Toras');

INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 1, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 1, 3, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 1, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 1, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 1, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 1, 3, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 1, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 1, 7, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 1, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 2, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 2, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 2, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 2, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 2, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 2, 3, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 2, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 2, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 2, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 3, 3, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 3, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 3, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 3, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 3, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 3, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 3, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 3, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 3, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 4, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 4, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 4, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 4, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 4, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 4, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 4, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 4, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 4, 3, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 5, 3, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 5, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 5, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 5, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 5, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 5, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 5, 2, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 5, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 5, 4, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 6, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (001, 7, 1, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (002, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (003, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (101, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (102, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (103, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (201, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (202, 7, 5, 1);
INSERT INTO chambre (cha_numero, cha_hot_id, cha_capacite, cha_type) VALUES (203, 7, 5, 1);

INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('Doe', 'John', '', 'LA');
INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('Homme', 'Josh', '', 'Palm Desert');
INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('Paul', 'Weller', '', 'Londre');
INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('White', 'Jack', '101 bld kennedy', 'Detroit');
INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('Claypool', 'Les', '', 'San Francisco');
INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('Squire', 'Chris', '', 'Londre');
INSERT INTO client (cli_nom, cli_prenom, cli_adresse, cli_ville) VALUES ('Wood', 'Ronnie', '', 'Londre');

INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (1, 1, '2017-01-10', '2017-07-01', '2017-07-15', 2400, 800);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (2, 2, '2017-01-10', '2017-07-01', '2017-07-18', 3400, 100);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (1, 3, '2017-01-10', '2017-07-01', '2017-07-15', 400, 50);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (5, 6, '2017-01-10', '2017-07-01', '2017-07-15', 7200, 1800);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (3, 5, '2017-01-10', '2017-07-01', '2017-07-15', 1400, 450);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (20, 6, '2017-01-10', '2017-07-01', '2017-07-15', 2400, 780);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (6, 6, '2017-01-10', '2017-07-01', '2017-07-15', 500, 80);
INSERT INTO reservation (res_cha_id, res_cli_id, res_date, res_date_debut, res_date_fin, res_prix, res_arrhes) VALUES (4, 1, '2017-01-10', '2017-07-01', '2017-07-15', 40, 0);


/* REQUETE */

/*Lot 1*/
/*
SELECT hot_nom AS 'Nom Hotel', hot_ville AS 'Nom ville'
FROM hotel;
*/
/*
SELECT cli_nom AS 'Nom', cli_prenom AS 'Prenom', cli_adresse AS 'Adresse'
FROM client
WHERE cli_nom = 'white';
*/
/*
SELECT sta_nom AS 'Nom station', sta_altitude AS 'Altitude Station'
FROM station 
WHERE sta_altitude < 1000;
*/
/*
SELECT cha_numero AS 'Numero chambre', cha_capacite AS 'Capacité chambre'
FROM chambre
WHERE cha_capacite > 1;
*/
/*
SELECT cli_nom AS 'Nom', cli_ville AS 'Ville'
FROM client
WHERE cli_ville <> 'Londre';
*/
/*
SELECT hot_nom AS 'Nom hotel', hot_ville AS 'Ville', hot_categorie AS 'Catégorie'
FROM hotel
WHERE hot_ville = 'Bretou' AND hot_categorie = 3;
*/

/*LOT 2*/
/*version 1 requete 7*/
/*
SELECT sta_nom AS 'Nom station', hot_nom AS 'Nom hotel', hot_categorie AS 'Catégorie hotel', hot_ville AS 'Ville Hotel'
FROM station
INNER JOIN hotel ON sta_id = hot_sta_id;
*/
/*version 2 requete 7*/
/*
SELECT sta_nom AS 'Nom station', hot_nom AS 'Nom hotel', hot_categorie AS 'Catégorie hotel', hot_ville AS 'Ville Hotel'
FROM hotel, station
WHERE sta_id = hot_sta_id;
*/
/*
SELECT hot_nom AS 'Nom hotel', hot_categorie as 'Categorie hotel', hot_ville AS 'Ville', cha_numero AS 'Numero chambre'
FROM hotel
INNER JOIN chambre ON cha_hot_id = hot_id;
*/
/*
SELECT hot_nom AS 'Nom hotel', hot_categorie as 'Categorie hotel', hot_ville AS 'Ville', cha_numero AS 'Numero chambre', cha_capacite AS 'Capacité chambre'
FROM hotel
INNER JOIN chambre ON cha_hot_id = hot_id
WHERE cha_capacite > 1 AND hot_ville = 'Bretou';
*/
/*
SELECT cli_nom AS 'Nom client', hot_nom AS 'Nom hotel', res_date AS 'Date de séservation'
FROM reservation
INNER JOIN client ON cli_id = res_cli_id
INNER JOIN chambre ON cha_id = res_cli_id
INNER JOIN hotel ON cha_hot_id = hot_id;
*/
/*
SELECT sta_nom AS 'Nom station', hot_nom AS 'Nom hotel', cha_numero AS 'Numero chambre', cha_capacite AS 'Capacité chambre'
FROM station *
INNER JOIN hotel ON hot_sta_id = sta_id
INNER JOIN chambre ON cha_hot_id = hot_id;
*/
/*
SELECT cli_nom AS 'Nom client', hot_nom AS 'Nom hotel', res_date_debut AS 'Date début séjour', DATEDIFF(res_date_fin,res_date_debut) AS 'Durée sejour'
FROM reservation
INNER JOIN client ON cli_id = res_cli_id
INNER JOIN chambre ON cha_id = res_cli_id
INNER JOIN hotel ON cha_hot_id = hot_id;
*/
/*LOT 3*/
/*
SELECT sta_nom AS 'Nom station', COUNT(hot_id) AS 'Nombre hotel'
FROM station 
INNER JOIN hotel ON hot_sta_id = sta_id
GROUP BY sta_id;
*/
/*
SELECT sta_nom AS 'Nom station', COUNT(cha_id) AS 'Nombre de chambre'
from station
INNER JOIN hotel ON hot_sta_id=sta_id
Inner join chambre On cha_hot_id = hot_id
GROUP BY sta_nom;
*/
/*
SELECT sta_nom AS 'Nom station', COUNT(cha_id) AS 'Nombre de chambre'
from station
INNER JOIN hotel ON hot_sta_id=sta_id
inner join chambre on cha_hot_id = hot_id
WHERE cha_capacite > 1
GROUP BY sta_nom;
*/

SELECT hot_nom AS 'Nom hotel ayant réservation de Mr Squire'
FROM reservation 
INNER JOIN client ON res_cli_id = cli_id
INNER JOIN chambre on res_cha_id = cha_id
inner JOIN hotel on cha_hot_id = hot_id
WHERE cli_nom = 'squire'
GROUP BY hot_nom;


/* En plus : exemple de détail des chambres réservées par mr Squire*/
/*SELECT hot_nom AS 'Nom hotel ayant réservation de Mr Squire', cha_numero
FROM reservation 
INNER JOIN client ON res_cli_id = cli_id
INNER JOIN chambre on res_cha_id = cha_id
inner JOIN hotel on cha_hot_id = hot_id
WHERE cli_nom = 'squire'
order BY hot_nom, cha_numero desc;
*/


SELECT sta_nom AS 'Nom station', AVG(DATEDIFF(res_date_fin,res_date_debut)) AS 'Moyenne séjour'
from reservation 
INNER JOIN chambre on res_cha_id = cha_id
inner JOIN hotel on cha_hot_id = hot_id
inner join station on sta_id = hot_sta_id
group by sta_nom;




