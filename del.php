<?php
require_once("function.php");
$id=$_GET["idProd"];
delProduitPanier($id);
header("location:panier.php");