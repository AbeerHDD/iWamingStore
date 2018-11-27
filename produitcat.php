<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Page1</title>
    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<?php
include_once("haut.php");
?>
<div class="container">




    <div class="row" style="margin-top: 80px;">
        <?php
        include_once("gauche.php");
        ?>


        <div class="col-md-9">
            <div class="panel panel-info">
                <div class="panel-heading">Liste des produits : </div>
                <div class="panel-body">
                    <?php
                    require_once("function.php");
                    $id=$_GET["idCat"];
                    $tab1=getAllProduitsByIdCat($id);
                    foreach($tab1 as $key=>$value) {
                        ?>
                        <div class="col-md-4">
                            <div class="thumbnail">
                                <img src="images/<?=$value["idProd"]?>.jpg">

                                <div class="caption">
                                    <h4 class="text-center"> <?=$value["desigProd"] ?></h4>

                                    <p> d<?=$value["descProd"] ?></p>

                                    <p><a href="#" class="btn btn-danger" role="button"><?=$value["prixProd"] ?></a>
                                        <a href="addpanier.php?idProd=<?=$value["idProd"]?>" class="btn btn-success pull-right" role="button">
                                            Ajout Panier</a></p>
                                </div>
                            </div>
                        </div>
                        <?php
                    }
                    ?>


                </div>
            </div>
        </div>
    </div>


</div><!-- /.container -->


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
