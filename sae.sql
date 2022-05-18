DO $$ DECLARE
  r RECORD;
BEGIN
  FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = current_schema()) LOOP
    EXECUTE 'DROP TABLE ' || quote_ident(r.tablename) || ' CASCADE';
  END LOOP;
END $$;

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


