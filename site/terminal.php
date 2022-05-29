<?php
include("connexion.php");

if(isset($_POST["req"])) {

    $requete = $_POST["req"];
    $info2=$connexion->query($requete);
    $res=$info2->fetchALL(PDO::FETCH_ASSOC);

    $requeteSimple = $_POST["req"];
    $info3=$connexion->query($requeteSimple);
    $resSimple=$info3->fetch(PDO::FETCH_ASSOC);


}


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


    <style>
        select{ display:block;}
    </style>
</head>
<body>
<?php require("header.php"); ?>
<section id="corps"> <!-- Contient la partie variable de la page -->
    <header><h2>Accueil</h2></header>
    <main>
        <article>

            <form id="choixreq" method="post">
                <fieldset>
                    <label for="edtReq" id="idReq">Terminal de requête :</label>
                    <input type="text" id="idReq" name="req" required/>
                    <input type="submit" id="btnSubmit" value="envoie" name="send"/>
                </fieldset>
            </form>

            <table border="1">
                <tr>
                <?php foreach ($resSimple as $key => $value) : ?>
                        <th><?=$key?></th>

                <?php endforeach; ?>
                </tr>


                <?php foreach ($res as $key => $value) : ?>
                    <tr>
                        <?php foreach($value as $k=>$v): ?>
                            <td><?=$v?></td>
                        <?php endforeach; ?>
                    </tr>
                <?php endforeach; ?>
            </table>

        </article>

    </main>
    <aside>

    </aside>
</section>

<?php require("footer.php"); ?>


</body>
</html>
