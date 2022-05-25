DROP TABLE IF EXISTS Donneur CASCADE ;
DROP TABLE IF EXISTS CentreDeCollecte CASCADE ;
DROP TABLE IF EXISTS Laboratoire CASCADE ;
DROP TABLE IF EXISTS Hopital CASCADE ;
DROP TABLE IF EXISTS Receveur CASCADE ;
DROP TABLE IF EXISTS Prix CASCADE ;
DROP TABLE IF EXISTS TypeSang CASCADE ;
DROP TABLE IF EXISTS PocheDisponible CASCADE ;
DROP TABLE IF EXISTS Donneur_CentreDeCollecte CASCADE ;
DROP TABLE IF EXISTS Centre_Hopital CASCADE ;
DROP TABLE IF EXISTS Hopital_Receveur CASCADE ;

CREATE TABLE Donneur (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50),
    maladie VARCHAR(5)
);

CREATE TABLE CentreDeCollecte (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeCC VARCHAR(50)
);

CREATE TABLE Laboratoire (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeLab VARCHAR(50)
);

CREATE TABLE Hopital (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeHop VARCHAR(50)
);

CREATE TABLE TypeSang (
    id SERIAL PRIMARY KEY,
    typesang VARCHAR(50)
);

CREATE TABLE Prix (
    id SERIAL PRIMARY KEY,
    prix FLOAT
);

CREATE TABLE Receveur (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50),
    typesang INTEGER
);

CREATE TABLE PocheDisponible (
    id SERIAL PRIMARY KEY,
    datePrelevement DATE,
    datePeremption DATE,
    typeSang VARCHAR(50),
    valider VARCHAR(5),
    idTypeSang INTEGER,
    idPrix INTEGER,
    idLab INTEGER,
    idCentre INTEGER,
    idDonneur INTEGER
);

CREATE TABLE Donneur_CentreDeCollecte (
    id_Donneur INTEGER,
    id_Centre INTEGER
);

CREATE TABLE Centre_Hopital (
    id_Centre INTEGER,
    id_Hopital INTEGER
);

CREATE TABLE Hopital_Receveur (
    id_Hopital INTEGER,
    id_Receveur INTEGER
);

INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Berthier','Julien','20','15 rue du champion 75100','789351676','A+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Sarrazin','Marius','25','8 rue de la Muscu 69500','678451367','O-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Chenoll','Lohen','20','9 rue du chauffer 33140','798123456','O+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Dautriat','Antonin','18','65 rue du cailloux 17450','634561389','B-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Moreau','Santoine','35','3 avenue teams 30400','678241567','A-','TRUE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Moulard','Antoine','54','90 rue sql 13500','784645753','AB+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Vallee','Julien','45','1 rue de la prairie 15600','678342513','O-','TRUE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Smith','Jhon','25','98 rue de l’ordinateur 12100','789453786','A+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Lela','Erisa','18','168 rue tirana 65000','684425632','O-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Bouquet','Carolle','69','87 rue bois de boulogne 78000','689345623','AB+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Egloff','Nicolas','19','25 avenue marillac 34000','789654565','B+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Pansivy','Camille','21','3 rue Victor Hugo Concarneau 23400','745653423',' O+ ','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Delvaux','Anais','26','53 place Maurice-Charretier 12450','678987654',' B- ','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Stains','Axel','21','77 Rue St Ferréol 13000','768324556','B+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Pichet','Arthur','19','31 rue des Lacs 65000','678657654','B-','TRUE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Merca','Evan','36','32 rue Petite Fusterie 50140','789098734','A-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Sabatier','Clara','55','38 Rue Bonnet 34900','634828925','O+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Toupin','Emma','23','91 rue du Château 15300','783156734','AB-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Tarret','Charlotte','26','27 rue Clement Marot 75900','625621465','B-','TRUE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Cebeaux','Adrien','19','32 Chemin Du Lavarin Sud 15900','678452323','O-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Mercier','Celia','70','98 boulevard Aristide Briand 72000','678546784','A-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Robie','Eva','20','33 Place du Jeu de Paume 19450','698764917','A+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Lemagnant','Louise','22','18 rue Petite Fusterie 34620','683565645','B-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Moreau','Antoine','27','22 rue de la Hulotais 17340','682315628','O-','TRUE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Sandler','Adam','22','48 boulevard de Prague 21630','735678536','A+','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Torlet','Alexandre','20','2 rue Reine Elisabeth 47000','798351567','AB-','TRUE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Gimet','Ambre','37','20 rue Clement Marot 23840','678456524','O-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Talon','Baptiste','56','53 rue Sadi Carnot 18130','678345462','O-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Bertrand','Clemence','37','99 rue de Raymond Poincaré 33000','789356783','O-','FALSE');
INSERT INTO Donneur(nom,prenom,age,adresse,numTel,groupeSanguin,maladie) VALUES ('Parnedaud','Enzo','27','31 Rue de Verdun 33140','678845623','O+','FALSE');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Cousin','18 avenue de Maillard 99935 Traore','0512691115');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Le Roux','88 impasse de Bigot 74 858 Dijoux','0525450487');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Collet','25 avenue Verdier 19 417 Guyot','0970055725');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Bouvier-Garnier','44 rue de Guillon 25 284 Lelievre','0872685211');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Le Payet','641 rue Jean 39777 Chauvindan','0405298623');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Marie Curie','342 rue Victor Hugo 33000 Bordeaux','0945678324');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Pompidou','45 rue Alfred Kastler 17000 La Rochelle','057854612');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Jamal Khamlichi',' 35 rue Auguste Perret 17000 La Rochelle','0934561324');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Louis Pasteur','125 rue Charles de Gaulle 33130 Begles','0546870214');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Réné Laennec','87 rue Louis Pasteur 17000 La Rochelle','0934126487');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Ambroise Paré','247 rue Jean Jaures 33000 Bordeaux','0934659809');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Xavier Bichat','31 rue Jean Moulin 69000 Lyon','0590070312');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Madeleine Bres','347 rue Leon Gambetta 44000 Nantes','0578451243');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Albert Calmette','263 avenue Georges Clemenceau 13000 Marseille','0913627858');
INSERT INTO CentreDeCollecte(nom,adresse,telFixeCC) VALUES ('Centre Emile Roux','36 rue Marechal Foch 75000 Paris','0931345465');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire de Evrard','93 chemin Bousquet 14970 Bodin','0255287641');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire du Nguyen','51 rue Herve 81990 Arnaud-sur-Mer','0898748921');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Hernandez','55 chemin Lebreton 40430 Roussel-les-Bains','0793569423');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Michel','chemin Gomez 16900 Remy','0876223432');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Techer','53 rue Georges 63470 Lacroix','0365220722');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Pasteur','71 Place de la Madeleine 75011 Paris','0978673518');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Emile Zola','80 rue de la Mare aux Carats 34090 Montpellier','0567843652');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Martin Luther King','3 rue de la Boétie 86000 Poitiers','0978325643');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Charles de Guaulle','15 cours Franklin Roosevelt 13007','0456315675');
INSERT INTO Laboratoire(nom,adresse,telFixeLab) VALUES ('Laboratoire Marie Curie','79 rue Ernest Renan 52000 Chaumont','0345727845');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('CHU Charpentier','26 avenue de Perrin 90 420 Germainboeuf','0303352437');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('CHU Marques','79 avenue Lenoir 31697 Thierrydan','0808902197');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('CHU Pichon','8 rue Ruiz 23244 Huet-sur-Benard','0367587512');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('CHU Capucine','483 impasse de Gosselin 82 476 Ledoux','0764440184');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('CHU Pons','3 avenue Geneviève Lemoine 24527 Boulanger','0537525800');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('Hôpital Henri-Mondor','1 Rue Gustave Eiffel 94010 Créteil','0467869569');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('Hôspital Lyon Sud Pierre-Bénite','165 Chemin du Grand Revoyet 69495 Pierre-Bénite','0367584524');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('CHU Pitié Salpêtrière','47 boulevard de l Hôpital 75013 Paris','0142160000');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('Hôspital Pellegrin','34 rue Amélie Raba Léon 33076 Bordeaux','0556795679');
INSERT INTO Hopital(nom,adresse,telFixeHop) VALUES ('Hôpital Saint-Louis de La Rochelle','rue du Dr Albert Schweitzer 17000 La Rochelle','0546455050');
INSERT INTO TypeSang(typesang) VALUES ('globulesrouges');
INSERT INTO TypeSang(typesang) VALUES ('plaquettes');
INSERT INTO TypeSang(typesang) VALUES ('plasma');
INSERT INTO Prix(prix) VALUES ('161.47');
INSERT INTO Prix(prix) VALUES ('175.39');
INSERT INTO Prix(prix) VALUES ('156.78');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Marie','Teixeira','23','42 rue de Thomas','891652107','O+','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Celina','Barre','49','95 avenue Loiseau','226899754','A+','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Paulette','Vaillant','39','51 rue de Collin','362147401','AB-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Thierry','Mailot','20','84 rue Adrien Olivier','497395048','B+','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Daniel','Bertin','58','95 avenue Boulanger','632642695','O+','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Julien','Bailly ','26','2 avenue de Fernandes','767890342','O-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Adrien','Robin','64','90 avenue Alexandre','757636847','A-','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Thibault','Leduc','21','11 rue Besson','675227040','B-','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Maggie','Francois','28','chemin de Bazin','655613662','A-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Penelope','Mercier','45','44 avenue de Ruiz','646578628','AB+','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Leveque ','Valentine','66','199 Rue d Aube','617286711','AB-','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Barbe ','Grégoire','54','399 Rue de Marbre','785376907','A-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Moreno ','Frédéric','49','492 Route du Croissant','611670682','B-','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Guillon ','Victor','49','361 Rue de Paradis','604607187','O+','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Dumont ','Pénélope','29','223 Chemin de Lumière','679905593','O-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Rousset ','André-Alphonse','65','195 Voie de Bénédiction','782955015','B-','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Vallee ','Nath','34','459 Rue de la Colline','627497937','A-','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Imbert ','Thierry','37','189 Rue des Fleurs','686360290','AB+','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Albert ','Daniel','39','225 Boulevard d Été','687547128','AB+','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Charles-Collet ','Roland','43','283 Rue de Marbre','708296514','A+','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Charrier ','Susan','74','33 Voie des Criquets','780955405','A-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Gonzalez ','Léon-Théodore','41','360 Rue des Canons','738137225','A-','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Camus ','Xavier','41','41 Chemin du Traversier','695868197','A-','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Langlois ','Gilbert','69','67 Chemin des Mandarines','726466604','A+','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Blanchard ','Audrey','58','188 Rue du Fond','632642696','A+','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Guillon','Christophe','29','448 Rue d Art','767890343','AB-','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Lejeune ','Bernard','30','387 Chemin des Saules','757636848','O-','3');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Carlier ','Alex-Aurore','48','209 Rue de Mémoires','675227041','O+','1');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Mallet ','Valérie','73','490 Rue de la Loi','655613663','B+','2');
INSERT INTO Receveur(nom,prenom,age,adresse,numTel,groupeSanguin,typesang) VALUES ('Besnard ','Lucie','63','282 Route de l Océan','646578629','B-','3');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-1','2022-06-1','TRUE','1','1','9','6','24');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-1','2022-06-1','TRUE','2','2','2','10','4');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-1','2022-06-1','TRUE','1','1','7','4','17');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-1','2022-06-1','TRUE','2','2','5','1','27');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-2','2022-06-2','FALSE','3','3','3','9','13');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-2','2022-06-2','TRUE','2','2','4','7','30');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-3','2022-06-3','TRUE','1','1','10','9','18');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-3','2022-06-3','TRUE','2','2','6','1','4');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-4','2022-06-4','TRUE','1','1','6','14','23');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-4','2022-06-4','TRUE','3','3','7','7','13');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-5','2022-06-5','TRUE','3','3','10','14','9');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-5','2022-06-5','TRUE','1','1','7','12','26');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-6','2022-06-6','TRUE','2','2','4','8','24');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-6','2022-06-6','TRUE','3','3','1','14','3');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-7','2022-06-7','TRUE','1','1','2','11','3');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-7','2022-06-7','FALSE','2','2','10','4','9');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-8','2022-06-8','TRUE','3','3','7','11','19');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-8','2022-06-8','TRUE','1','1','1','1','9');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-9','2022-06-9','TRUE','3','3','4','15','22');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-9','2022-06-9','TRUE','1','1','6','5','25');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-10','2022-06-10','FALSE','3','3','9','6','20');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-10','2022-06-10','FALSE','1','1','4','4','22');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-11','2022-06-11','TRUE','1','1','4','9','12');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-11','2022-06-11','TRUE','1','1','9','5','27');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-12','2022-06-12','TRUE','2','2','7','8','8');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-12','2022-06-12','TRUE','1','1','8','3','11');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-13','2022-06-13','TRUE','1','1','1','12','10');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-13','2022-06-13','TRUE','1','1','1','8','1');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-14','2022-06-14','TRUE','3','3','6','8','25');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-14','2022-06-14','TRUE','1','1','3','14','18');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-15','2022-06-15','TRUE','3','3','2','8','17');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-15','2022-06-15','TRUE','1','1','1','9','26');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-16','2022-06-16','TRUE','1','1','2','8','23');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-16','2022-06-16','TRUE','3','3','10','15','22');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-17','2022-06-17','TRUE','1','1','10','14','5');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-17','2022-06-17','TRUE','2','2','5','10','29');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-18','2022-06-18','TRUE','3','3','4','15','5');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-18','2022-06-18','TRUE','2','2','2','14','20');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-19','2022-06-19','TRUE','3','3','7','15','12');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-19','2022-06-19','TRUE','3','3','7','12','1');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-20','2022-06-20','TRUE','1','1','8','9','2');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-20','2022-06-20','TRUE','1','1','5','7','5');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-21','2022-06-21','TRUE','3','3','2','9','18');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-21','2022-06-21','TRUE','2','2','4','4','6');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-22','2022-06-22','TRUE','1','1','2','1','2');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-22','2022-06-22','FALSE','1','1','2','15','22');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-23','2022-06-23','TRUE','1','1','10','13','9');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-23','2022-06-23','TRUE','1','1','9','12','15');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-24','2022-06-24','TRUE','1','1','9','2','27');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-24','2022-06-24','TRUE','3','3','6','8','17');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-25','2022-06-25','FALSE','3','3','4','6','30');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-25','2022-06-25','TRUE','1','1','10','2','5');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-26','2022-06-26','TRUE','3','3','8','9','10');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-26','2022-06-26','TRUE','1','1','7','5','14');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-27','2022-06-27','TRUE','3','3','8','12','28');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-27','2022-06-27','TRUE','1','1','9','7','27');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-28','2022-06-28','TRUE','3','3','4','6','5');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-28','2022-06-28','TRUE','2','2','10','11','9');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-29','2022-06-29','TRUE','3','3','9','10','17');
INSERT INTO PocheDisponible(datePrelevement,datePeremption,valider,idTypeSang,idprix,idLab,idCentre,idDonneur) VALUES ('2022-05-29','2022-06-29','TRUE','3','3','3','12','12');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('1','9');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('1','2');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('1','30');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('1','18');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('2','6');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('2','15');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('2','9');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('2','26');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('3','22');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('3','4');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('3','28');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('3','26');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('4','8');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('4','14');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('4','7');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('4','1');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('5','5');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('5','21');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('5','24');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('5','13');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('6','10');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('6','17');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('6','7');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('6','3');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('7','11');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('7','16');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('7','22');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('7','12');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('8','7');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('8','10');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('8','25');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('8','28');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('9','24');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('9','25');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('9','27');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('9','3');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('10','17');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('10','20');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('10','26');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('10','11');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('11','5');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('11','23');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('11','6');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('11','11');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('12','19');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('12','29');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('12','15');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('12','2');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('13','21');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('13','9');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('13','18');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('13','3');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('14','12');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('14','14');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('14','30');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('14','25');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('15','30');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('15','18');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('15','23');
INSERT INTO Donneur_CentreDeCollecte(id_Donneur,id_Centre) VALUES ('15','1');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('1','6');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('1','4');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('1','10');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('2','12');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('2','11');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('2','1');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('3','15');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('3','14');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('3','1');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('4','7');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('4','10');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('4','8');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('5','13');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('5','5');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('5','7');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('6','12');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('6','9');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('6','3');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('7','1');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('7','9');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('7','1');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('8','2');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('8','14');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('8','5');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('9','14');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('9','13');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('9','4');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('10','3');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('10','11');
INSERT INTO Centre_Hopital(id_Centre,id_Hopital) VALUES ('10','13');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('1','1');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('1','2');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('1','3');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('2','4');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('2','5');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('2','6');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('3','7');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('3','8');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('3','9');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('4','10');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('4','11');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('4','12');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('5','13');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('5','14');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('5','15');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('6','16');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('6','17');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('6','18');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('7','19');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('7','20');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('7','21');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('8','22');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('8','23');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('8','24');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('9','25');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('9','26');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('9','27');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('10','28');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('10','29');
INSERT INTO Hopital_Receveur(id_Hopital,id_Receveur) VALUES ('10','30');

