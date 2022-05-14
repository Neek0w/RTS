DROP DATABASE IF EXISTS rts;

CREATE DATABASE rts;
USE rts;

CREATE TABLE donneur (
    idDonneur SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50),
    maladie VARCHAR(5)
);

CREATE TABLE centreDeCollecte (
    idPoche SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeCC VARCHAR(50)
);

CREATE TABLE laboratoire (
    idLab SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeLab VARCHAR(50)
);

CREATE TABLE hopital (
    idHop SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeHop VARCHAR(50)
);

CREATE TABLE receveur (
    idReceveur SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50)
);

CREATE TABLE pocheDisponible (
    idPoche SERIAL PRIMARY KEY,
    datePrelevement DATE,
    datePeremption DATE,
    typeSang VARCHAR(50),
    valider VARCHAR(5),
    idLab INTEGER REFERENCES Laboratoire,
    idCentre INTEGER REFERENCES CentreDeCollecte,
    idDonneur INTEGER REFERENCES Donneur
);

CREATE TABLE donneur_CentreCollecte (
    id_Donneur INTEGER REFERENCES Donneur,
    id_Centre INTEGER REFERENCES CentreDeCollecte
);

CREATE TABLE centre_Hopital (
    id_Centre INTEGER REFERENCES CentreDeCollecte,
    id_Hopital INTEGER REFERENCES Hopital
);

CREATE TABLE receveur_Hopital (
    id_Receveur INTEGER REFERENCES Receveur,
    id_Hopital INTEGER REFERENCES Hopital
);


INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Berthier","Julien","20","15 rue du champion","480","A+","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Sarrazin","Marius","25","8 rue de la Muscu","481","O-","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Chenoll","Lohen","20","9 rue du chauffer","482","O+","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Dautriat","Antonin","18","65 rue du cailloux","483","B-","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Moreau","Santoine","35","3 avenue teams ","484","A-","true");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Moulard","Antoine","54","90 rue sql","485","AB+","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Vallee","Julien","98","1 rue de la prairie","486","O-","true");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Smith","Jhon","25","98 rue de l’ordinateur","487","A+","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Lela","Erisa","18","168 rue tirana","488","O-","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Bouquet","Carolle","69","87 rue bois de boulogne","489","AB+","false");
INSERT INTO `donneur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`,`maladie`) VALUES ("Egloff","Nicolas","19","25 avenue marillac","490","B+","false");


INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Marie","Teixeira","23","42 rue de Thomas","670","O+");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Celina","Barre","49","95 avenue Loiseau","671","A+");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Paulette","Vaillant","39","51 rue de Collin","672","AB-");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Thierry","Mailot","20","84 rue Adrien Olivier","673","B+");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Daniel","Bertin","58","95 avenue Boulanger","674","O+");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Julien","Bailly ","26","2 avenue de Fernandes","675","O-");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Adrien","Robin","64","90 avenue Alexandre","676","A-");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Thibault","Leduc","21","11 rue Besson","677","B-");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Maggie","Francois","28","chemin de Bazin","678","A-");
INSERT INTO `receveur`(`nom`,`prenom`,`age`,`adresse`,`numTel`,`groupeSanguin`) VALUES ("Penelope","Mercier","45","44 avenue de Ruiz","679","AB+");


INSERT INTO `hopital`(`nom`,`adresse`,`telFixeHop`) VALUES ("CHU Charpentier","26 avenue de Perrin 90 420 Germainboeuf","303352437");
INSERT INTO `hopital`(`nom`,`adresse`,`telFixeHop`) VALUES ("CHU Marques","79 avenue Lenoir 31697 Thierrydan","808902197");
INSERT INTO `hopital`(`nom`,`adresse`,`telFixeHop`) VALUES ("CHU Pichon","8 rue Ruiz 23244 Huet-sur-Benard","367587512");
INSERT INTO `hopital`(`nom`,`adresse`,`telFixeHop`) VALUES ("CHU Capucine","483 impasse de Gosselin 82 476 Ledoux","764440184");
INSERT INTO `hopital`(`nom`,`adresse`,`telFixeHop`) VALUES ("CHU Pons","3 avenue Geneviève Lemoine 24527 Boulanger","537525800");


INSERT INTO `centreDeCollecte`(`nom`,`adresse`,`telFixeCC`) VALUES ("Centre Cousin","18 avenue de Maillard 99935 Traore","512691115");
INSERT INTO `centreDeCollecte`(`nom`,`adresse`,`telFixeCC`) VALUES ("Centre Le Roux","88 impasse de Bigot 74 858 Dijoux","325450487");
INSERT INTO `centreDeCollecte`(`nom`,`adresse`,`telFixeCC`) VALUES ("Centre Collet","25 avenue Verdier 19 417 Guyot","970055725");
INSERT INTO `centreDeCollecte`(`nom`,`adresse`,`telFixeCC`) VALUES ("Centre Bouvier-Garnier","44 rue de Guillon 25 284 Lelievre","872685211");
INSERT INTO `centreDeCollecte`(`nom`,`adresse`,`telFixeCC`) VALUES ("Centre Le Payet","641 rue Jean 39777 Chauvindan","405298623");


INSERT INTO `laboratoire`(`nom`,`adresse`,`telFixeLab`) VALUES ("Laboratoire de Evrard","93 chemin Bousquet 14 974 Bodin","255287641");
INSERT INTO `laboratoire`(`nom`,`adresse`,`telFixeLab`) VALUES ("Laboratoire du Nguyen","51 rue Herve 81993 Arnaud-sur-Mer","898748921");
INSERT INTO `laboratoire`(`nom`,`adresse`,`telFixeLab`) VALUES ("Laboratoire Hernandez","55 chemin Lebreton 40433 Roussel-les-Bains","793569423");
INSERT INTO `laboratoire`(`nom`,`adresse`,`telFixeLab`) VALUES ("Laboratoire Michel","chemin Gomez 16907 Remy","876223432");
INSERT INTO `laboratoire`(`nom`,`adresse`,`telFixeLab`) VALUES ("Laboratoire Techer","53 rue Georges 63 473 Lacroix","365220722");


INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-01","2022-06-01","O-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-02","2022-06-02","O+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-03","2022-06-03","A+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-04","2022-06-04","A-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-05","2022-06-05","B+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-06","2022-06-06","B-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-07","2022-06-07","AB+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-08","2022-06-08","AB-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-09","2022-06-09","O-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-10","2022-06-10","O+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-11","2022-06-11","A+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-12","2022-06-12","A-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-13","2022-06-13","B+","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-14","2022-06-14","B-","true","1","1","1");
INSERT INTO `pocheDisponible`(`datePrelevement`,`datePeremption`,`typeSang`,`valider`,`idLab`,`idCentre`,`idDonneur`) VALUES ("2022-05-15","2022-06-15","AB+","true","1","1","1");
