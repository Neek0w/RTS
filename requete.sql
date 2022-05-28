--obtenir nom prenom et numero de telephone d'une persoone avec tel type de sang 
SELECT Donneur.numTel,Donneur.nom,Donneur.prenom
FROM Donneur          
WHERE Donneur.groupeSanguin = 'O-' ;

--obtenir nom prenom et numero de telephone d'une persoone avec tel personne (nom,prenom)
SELECT Donneur.numTel,Donneur.nom,Donneur.prenom
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

--nombre de poche disponible pour tel groupe sanguin
SELECT count(*) as nbr_poches
FROM PocheDisponible
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE groupeSanguin = 'O+';

--date de peremption des poches disponible pour tel groupe sanguin
SELECT PocheDisponible.dateperemption as dateperemption
FROM PocheDisponible
JOIN Donneur on Donneur.id = PocheDisponible.idDonneur
WHERE groupeSanguin = 'A+';

--nombre de poche non valider par tel laboratoire
select count(*) as poche_malade
FROM PocheDisponible
JOIN Laboratoire on Laboratoire.id = PocheDisponible.idLab
WHERE PocheDisponible.valider = 'FALSE' and Laboratoire.nom = 'Laboratoire du Nguyen';

--nom prenom et numero de telephone des personnes ayant produit une poche malade
SELECT Donneur.numTel,Donneur.nom,Donneur.prenom
FROM Donneur 
JOIN PocheDisponible on PocheDisponible.idDonneur = Donneur.id         
WHERE valider = 'FALSE';