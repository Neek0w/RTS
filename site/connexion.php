<?php
//Création des variables
define("SERVEUR","db");
define("USER","root");
define("MDP","root");
define("BD","sae");

// gestion de la connexion
try
{
    $connexion= new PDO('mysql:host='.SERVEUR.';dbname='.BD, USER, MDP);
    $connexion->exec("SET CHARACTER SET utf8");	//Gestion des accents
}

//gestion des erreurs
catch(Exception $e)
{
    echo 'Erreur : '.$e->getMessage().'<br />';
    echo 'N° : '.$e->getCode();
}
?>