<?php
//Création des variables
define("SERVEUR","localhost");
define("USER","lchenoll");
define("MDP","lchenoll");
define("BD","lchenoll");

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