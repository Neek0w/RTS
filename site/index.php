<?php 
include("connexion.php");
$sql= 'SELECT musiciens.nom,musiciens.prenom,instruments.nom as instru FROM instruments,musiciens WHERE musiciens.instrument = instruments.num';
$result=$connexion->query($sql);
$musiciens=$result->fetchall(PDO::FETCH_ASSOC);
?>


<!DOCTYPE html>
<html>
    <head>
        <title>SAE 2.03</title>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta name="keywords" content="">

        <link rel="stylesheet" href="css/materialize.min.css">

        <link rel="stylesheet" href="css/reset.css">
        <link rel="stylesheet" href="css/styles.css">

    </head>
    <body>
        <!-- HEADER -->
        <?php require("header.php"); ?>

        <section id="corps"> <!-- Contient la partie variable de la page -->
            <header><h2>SAE 2.03 - Mettre en place une solution informatique pour l’entreprise</h2></header>
            <main>
                <article>
                    <h3>Presentation</h3>
                        


                </article>    

            </main>
        </section>

        <!-- FOOTER -->
        <?php require("footer.php") ?>

    </body>
</html>