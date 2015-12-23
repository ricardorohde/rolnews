<?php
ob_start();
require('./_app/Config.inc.php');
$Session = new Session(10);
Check::UserOnline();
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <!--[if lt IE 9]><script src="../../_cdn/html5.js"></script><![endif]-->
        <?php
        $Link = new Link;
        $Link->getTags();
        ?>
        <!-- CSS -->
        <link rel="stylesheet" type="text/css" href="<?= HOME; ?>/lib/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="<?= HOME; ?>/lib/shadowbox/shadowbox.css"/>
        <link rel="stylesheet" type="text/css" href="<?= HOME; ?>/lib/flexisel/css/flexisel.css"/>
        <link rel="stylesheet" type="text/css" href="<?= HOME; ?>/lib/jqueryValidation/validationEngine.jquery.css"/>
        <link rel="stylesheet" type="text/css" href="<?= INCLUDE_PATH; ?>/css/styles.min.css"/>
        <link rel="stylesheet" type="text/css" href="<?= INCLUDE_PATH; ?>/css/layout.css"/>
        <script src="<?= HOME; ?>/js/hr.js"></script>
    </head>
    <!-- END CSS -->
</head>
<body>
    <?php
    require(REQUIRE_PATH . '/inc/header.inc.php');
    if ($Link->getLocal()[0] == 'index'):
        $popUp = new Read;
        $popUp->ExeRead("banners", "WHERE tipo = :idtipo ORDER BY id DESC LIMIT 4", "idtipo=1");
        if ($popUp->getResult()):
            require(REQUIRE_PATH . '/inc/popup.inc.php');
        endif;
    endif;

    echo '<div class="centerlyt">';
    echo '  <div class="capa">';
    if (!require($Link->getPatch())):
        WSErro('Erro ao incluir arquivo de navegação!', WS_ERROR, true);
    endif;
    echo '  </div>';
    echo '</div>';
    require(REQUIRE_PATH . '/inc/footer.inc.php');
    ?>
</body>
<!-- JS -->
<script src="<?= HOME; ?>/js/modernizr.min.js"></script>
<script src="<?= HOME; ?>/lib/jquery/jquery.js"></script>
<script src="<?= HOME; ?>/lib/bootstrap/js/bootstrap.min.js"></script>
<script src="<?= HOME; ?>/lib/shadowbox/shadowbox.js"></script>
<script src="<?= HOME; ?>/lib/flexisel/js/jquery.flexisel.js"></script>
<script src="<?= HOME; ?>/lib/jqueryValidation/jquery.validationEngine.js"></script>
<script src="<?= HOME; ?>/lib/jqueryValidation/jquery.validationEngine-pt_BR.js"></script>
<script src="<?= HOME; ?>/js/jquery.maskedinput.min.js"></script>
<script src="<?= HOME; ?>/js/jcycle.min.js"></script>
<script src="<?= HOME; ?>/js/slide.min.js"></script>
<script src="<?= HOME; ?>/js/custom.js"></script>
</html>
<?php
ob_end_flush();
