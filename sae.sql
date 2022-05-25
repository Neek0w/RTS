DROP TABLE IF EXISTS Donneur CASCADE ;
DROP TABLE IF EXISTS CentreDeCollecte CASCADE ;
DROP TABLE IF EXISTS Laboratoire CASCADE ;
DROP TABLE IF EXISTS Hopital CASCADE ;
DROP TABLE IF EXISTS Receveur CASCADE ;
DROP TABLE IF EXISTS Prix CASCADE ;
DROP TABLE IF EXISTS TypeSang CASCADE ;
DROP TABLE IF EXISTS PocheDisponible CASCADE ;
DROP TABLE IF EXISTS Donneur_CentreCollecte CASCADE ;
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

CREATE TABLE Receveur (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50)
);

CREATE TABLE TypeSang (
    id SERIAL PRIMARY KEY,
    typesang VARCHAR(50)
);

CREATE TABLE Prix (
    id SERIAL PRIMARY KEY,
    prix FLOAT
);

CREATE TABLE PocheDisponible (
    id SERIAL PRIMARY KEY,
    datePrelevement DATE,
    datePeremption DATE,
    typeSang VARCHAR(50),
    valider VARCHAR(5),
    idTypeSang INTEGER REFERENCES typeSang,
    idPrix INTEGER REFERENCES Prix,
    idLab INTEGER REFERENCES Laboratoire,
    idCentre INTEGER REFERENCES CentreDeCollecte,
    idDonneur INTEGER REFERENCES Donneur
);

CREATE TABLE Donneur_CentreCollecte (
    id_Donneur INTEGER REFERENCES Donneur,
    id_Centre INTEGER REFERENCES CentreDeCollecte
);

CREATE TABLE Centre_Hopital (
    id_Centre INTEGER REFERENCES CentreDeCollecte,
    id_Hopital INTEGER REFERENCES Hopital
);

CREATE TABLE Hopital_Receveur (
    id_Hopital INTEGER REFERENCES Hopital,
    id_Receveur INTEGER REFERENCES Receveur
);

