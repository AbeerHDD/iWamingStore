<?php
require_once("function.php");
$id=$_GET["idProd"];
addPanier($id);
header("location:panier.php");