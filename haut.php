<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">iWamingStore</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">

            <ul class="nav navbar-nav">
                <li class="active"><a href="page1.php">Home</a></li>
                <?php
                require_once("function.php");
                $tab=getAllCategories();
                foreach($tab as $key=>$value) {
                    ?>
                    <li><a href='#'><?= $value["descCat"] ?></a></li>
                    <?php
                }
                ?>
            </ul>

            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="panier.php">Panier en Cours  (<?= getsizePanier();?>) </a>
                </li>

            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
