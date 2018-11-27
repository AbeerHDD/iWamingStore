<div class="col-md-3">
    <div class="list-group">
        <a href="boutique.php" class="list-group-item active"> Tous les Produits </a>
        <?php
        require_once("function.php");
        $tab=getAllCategories();
        foreach($tab as $key=>$value) {
            ?>
            <a class="list-group-item" href="produitcat.php?idCat=<?=$value["idCat"]?>"><?=$value["descCat"]?></a>
            <?php
        }
        ?>
    </div>
</div>