CREATE TABLE Donneur (
    idDonneur SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50),
    maladie VARCHAR(50)
);

CREATE TABLE CentreDeCollecte (
    idPoche SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeCC VARCHAR(50)
);

CREATE TABLE Laboratoire (
    idLab SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeLab VARCHAR(50),
    _validation BOOLEAN
);

CREATE TABLE Hopital (
    idHop SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    adresse VARCHAR(50),
    telFixeHop VARCHAR(50)
);

CREATE TABLE Receveur (
    idReceveur SERIAL PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    age INTEGER,
    adresse VARCHAR(50),
    numTel VARCHAR(50),
    groupeSanguin VARCHAR(50)
);

CREATE TABLE PocheDisponible (
    idPoche SERIAL PRIMARY KEY,
    datePrelevement DATE,
    datePeremption DATE,
    typeSang VARCHAR(50),
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

CREATE TABLE Receveur_Hopital (
    id_Receveur INTEGER REFERENCES Receveur,
    id_Hopital INTEGER REFERENCES Hopital
);
