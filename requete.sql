--obtenir nom prenom et numero de telephone d'une persoone avec tel groupe sanguin (groupe sanguin)
SELECT Donneur.numTel as telephone ,Donneur.nom as nom ,Donneur.prenom as prenom
FROM Donneur          
WHERE Donneur.groupeSanguin = 'O-' ;

--obtenir nom prenom et numero de telephone d'une personne du meme groupe sanguin que tel personne (nom,prenom)
SELECT Donneur.numTel as telephone ,Donneur.nom as nom ,Donneur.prenom as prenom
FROM Donneur          
WHERE Donneur.groupeSanguin = (
    SELECT Receveur.groupeSanguin 
    FROM Receveur 
    WHERE Receveur.nom = 'Celina' and Receveur.prenom = 'Barre' );

--Age moyen des receveurs 
SELECT sum(Receveur.age)/count(*) as age_moyen 
FROM Receveur;

--indique le prix la poche portant tel numero (idpoche)
SELECT PocheDisponible.id as numero_poche ,Prix.prix as prix
FROM PocheDisponible
JOIN Prix on Prix.id = PocheDisponible.idprix
WHERE PocheDisponible.id = 25 ;

--age moyen donneurs
SELECT sum(Donneur.age)/count(*) as age_moyen 
FROM Donneur;

--nombre de poche disponible pour tel groupe sanguin (grp sanguin)
SELECT count(*) as nbr_poches
FROM PocheDisponible
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE groupeSanguin = 'O+';

--date de peremption des poches disponible pour tel groupe sanguin (grp sanguin)
SELECT PocheDisponible.id as id_poche,PocheDisponible.dateperemption as dateperemption
FROM PocheDisponible
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE groupeSanguin = 'A+';

--nombre de poche non valider par tel laboratoire (nom du laboratoire)
SELECT count(*) as nbr_poche_malade
FROM PocheDisponible
JOIN Laboratoire on Laboratoire.id = PocheDisponible.idLab
WHERE PocheDisponible.valider = 'FALSE' and Laboratoire.nom = 'Laboratoire du Nguyen';

--nom prenom et numero de telephone des personnes ayant produit une poche malade
SELECT Donneur.numTel as telephone ,Donneur.nom as nom ,Donneur.prenom as prenom
FROM Donneur 
JOIN PocheDisponible on PocheDisponible.idDonneur = Donneur.id         
WHERE valider = 'FALSE';

--nombre de poche de tel sang que tel centre a recolter (grp sanguin ,nom du centre)
SELECT count(*) as nbr_poches
FROM PocheDisponible 
JOIN Donneur on PocheDisponible.idDonneur = Donneur.id
JOIN CentreDeCollecte on PocheDisponible.idCentre = CentreDeCollecte.id
WHERE CentreDeCollecte.nom = 'Centre Louis Pasteur';

--nombre de demandeur de tel poches (type de sang ,groupe sanguin)
SELECT Count(*) as nbr_demandeur
FROM Receveur
JOIN TypeSang on TypeSang.id = Receveur.typesang
JOIN PocheDisponible on PocheDisponible.id = Receveur.typesang
WHERE Receveur.groupeSanguin = 'B-' and TypeSang.typesang = 'globulesrouges';

--Hopital de tel receveur (nom ,prenom)
SELECT Hopital.nom as nom ,Hopital.adresse as adresse ,Hopital.telFixeHop as telephone
FROM Hopital
JOIN Hopital_Receveur on Hopital_Receveur.id_Hopital = Hopital.id
JOIN Receveur on Receveur.id = Hopital_Receveur.id_Receveur
WHERE Receveur.nom = 'Maggie' and Receveur.prenom = 'Francois';

--poche compatible avec tel receveur (type de sang, nom ,prenom)
SELECT PocheDisponible.id as num_Poche ,TypeSang.typesang as type_sang
FROM PocheDisponible
JOIN TypeSang on TypeSang.id = PocheDisponible.idTypeSang
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE TypeSang.typesang = 'plaquettes' 
AND Donneur.groupeSanguin = (
    SELECT Receveur.groupeSanguin 
    FROM Receveur 
    WHERE Receveur.nom = 'Celina' and Receveur.prenom = 'Barre' );

--prix pour tel poches de sang (type, groupe sanguin)
SELECT PocheDisponible.id as numero_poche ,Prix.prix as prix
FROM PocheDisponible
JOIN Prix on Prix.id = PocheDisponible.idprix
JOIN TypeSang on TypeSang.id = PocheDisponible.idTypeSang
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE TypeSang.typesang = 'plasma' AND Donneur.groupeSanguin = 'O-';

--saisie de nom et prenom d'un demandeur et renvoie toute les infos sur les poches possibles (nom, prenom)
SELECT PocheDisponible.id as numero_poche ,PocheDisponible.dateperemption as date_peremption, Prix.prix as prix
FROM PocheDisponible
JOIN Prix on Prix.id = PocheDisponible.idprix
JOIN TypeSang on TypeSang.id = PocheDisponible.idTypeSang
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE Donneur.groupeSanguin = (
    SELECT Receveur.groupeSanguin 
    FROM Receveur 
    WHERE Receveur.nom = 'Adrien' and Receveur.prenom = 'Robin' )
AND
TypeSang.typesang = (
    SELECT TypeSang.typesang 
    FROM TypeSang
    JOIN Receveur on Receveur.typesang = TypeSang.id
WHERE Receveur.nom = 'Adrien' and Receveur.prenom = 'Robin' );