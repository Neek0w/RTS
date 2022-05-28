--obtenir nom prenom et numero de telephone d'une persoone avec tel type de sang (type de sang)
SELECT Donneur.numTel as telephone ,Donneur.nom as nom ,Donneur.prenom as prenom
FROM Donneur          
WHERE Donneur.groupeSanguin = 'O-' ;

--obtenir nom prenom et numero de telephone d'une persoone avec tel personne (nom,prenom)
SELECT Donneur.numTel as telephone ,Donneur.nom as nom ,Donneur.prenom as prenom
FROM Donneur          
WHERE Donneur.groupeSanguin = (
    SELECT Receveur.groupeSanguin 
    FROM Receveur 
    WHERE Receveur.nom = 'Celina' and Receveur.prenom = 'Barre' );

--Age moyen des receveurs 
SELECT sum(Receveur.age)/count(*) as age_moyen 
FROM Receveur;

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
select count(*) as nbr_poche_malade
FROM PocheDisponible
JOIN Laboratoire on Laboratoire.id = PocheDisponible.idLab
WHERE PocheDisponible.valider = 'FALSE' and Laboratoire.nom = 'Laboratoire du Nguyen';

--nom prenom et numero de telephone des personnes ayant produit une poche malade
SELECT Donneur.numTel as telephone ,Donneur.nom as nom ,Donneur.prenom as prenom
FROM Donneur 
JOIN PocheDisponible on PocheDisponible.idDonneur = Donneur.id         
WHERE valider = 'FALSE';

--nombre de poche de tel sang que tel centre a recolter (grp sanguin ,nom du centre)
SELECT count(*)
FROM PocheDisponible 
JOIN Donneur on PocheDisponible.idDonneur = Donneur.id
JOIN CentreDeCollecte on PocheDisponible.idCentre = CentreDeCollecte.id
WHERE CentreDeCollecte.nom = 'Centre Louis Pasteur';

--nom prenom et telephone d'un donneur compatible 
SELECT Count(*)
FROM Receveur
JOIN TypeSang on TypeSang.id = Receveur.typesang
JOIN PocheDisponible on PocheDisponible.id = Receveur.typesang
WHERE Receveur.groupeSanguin = 'B-';