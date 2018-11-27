<?php
function getconnexion(){
    $cnx=mysqli_connect("localhost","root","","istore");
    return $cnx;
}
function getAllProduit(){
    $cnx=getconnexion();
    $req=mysqli_query($cnx,"select * from produits");
    $tab=array();
    while($rst=mysqli_fetch_array($req)){
        $tab[]=$rst;
    }
    mysqli_free_result($req);
    return $tab;
}
function getAllProduitsByIdCat($idCat){
    $cnx=getconnexion();
    $req=mysqli_query($cnx,"select * from produits where catProd={$idCat}");
    $tab=array();
    while($rst=mysqli_fetch_array($req)){
        $tab[]=$rst;
    }
    mysqli_free_result($req);
    return $tab;
}
function getAllProduitsByDesCat($descCat){
    $cnx=getconnexion();
    $req=mysqli_query($cnx,"select * from produits , categories where produits.catProd=categories.idCat and categories.descCat='{$descCat}'");
    $tab=array();
    while($rst=mysqli_fetch_array($req)){
        $tab[]=$rst;
    }
    mysqli_free_result($req);
    return $tab;
}
function getAllCategories(){
    $cnx=getconnexion();
    $req=mysqli_query($cnx,"select * from categories");
    $tab=array();
    while($rst=mysqli_fetch_array($req)){
        $tab[]=$rst;
    }
    mysqli_free_result($req);
    return $tab;
}
function getProduitById($idProd){
    $cnx=getconnexion();
    $req=mysqli_query($cnx,"select * from produits where idProd={$idProd}");
    $val=mysqli_fetch_array($req);
    return $val;

}

function getCategoriesById($idCat){
    $cnx=getconnexion();
    $req=mysqli_query($cnx,"select * from categories where idCat={$idCat}");
    $val=mysqli_fetch_array($req);
    return $val;

}


function getSession(){
    if(!isset($_SESSION)){
       session_start();
    }
    if(!isset($_SESSION["panier"])){
        $_SESSION["panier"]=array();
    }
}

function addPanier($idProd)
{
    getSession();
    if (isset($_SESSION["panier"][$idProd])) {
        $_SESSION["panier"][$idProd]++;
    } else {
        $_SESSION["panier"][$idProd] = 1;
    }
}
function getPanier(){
    getSession();
    return $_SESSION["panier"];
}
function getProduitsPanier(){
    $panier=getPanier();
    $tab=array();
    $keys=array_keys($panier);
    if(empty($keys)){
      return $tab;
    }
    $txt=implode(",",$keys);
    $sql="select * from produits where idProd in($txt)";
    $cnx=getconnexion();
    $rep=mysqli_query($cnx,$sql);
    while($d=mysqli_fetch_array($rep)){
        $tab[]=$d;
    }
    return $tab;
}


function getsizePanier(){
    getSession();
    return sizeof($_SESSION["panier"]);
}

function delProduitPanier($idProd){
    getSession();
    unset($_SESSION["panier"][$idProd]);
}











