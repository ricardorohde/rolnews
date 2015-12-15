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
    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-62446943-1', 'auto');
        ga('send', 'pageview');
    </script>
</head>
<body>
    <?php
    require(REQUIRE_PATH . '/inc/header.inc.php');
    echo '<div class="centerlyt">';
    echo '<div class="capa">';
    if (!require($Link->getPatch())):
        WSErro('Erro ao incluir arquivo de navegação!', WS_ERROR, true);
    endif;
    echo '</div>';
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
