<?php
ob_start();
session_start();
require('../_app/Config.inc.php');

$login = new Login(1);
$logoff = filter_input(INPUT_GET, 'logoff', FILTER_VALIDATE_BOOLEAN);
$getexe = filter_input(INPUT_GET, 'exe', FILTER_DEFAULT);

if (!$login->CheckLogin()):
    unset($_SESSION['userlogin']);
    header('Location: index.php?exe=restrito');
else:
    $userlogin = $_SESSION['userlogin'];
endif;

if ($logoff):
    unset($_SESSION['userlogin']);
    header('Location: index.php?exe=logoff');
endif;
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="http://www.creativewebsites.com.br/midia/favicon.ico" />
        <title> CW ADMIN v.4.0 - Dashboard</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Morris chart -->
        <link href="plugins/morris/morris.css" rel="stylesheet" type="text/css" />
        <!-- jvectormap -->
        <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
        <!-- Daterange picker -->
        <link href="plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
        <!-- DATA TABLES -->
        <link href="plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- AdminLTE Skins. Choose a skin from the css/skins 
             folder instead of downloading all of them to reduce the load. -->
        <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="skin-blue">
        <div class="wrapper">
            <?php
            //Main Menu
            include(__DIR__ . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'inc' . DIRECTORY_SEPARATOR . 'main-menu.inc.php');
            //Sidebar
            include(__DIR__ . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'inc' . DIRECTORY_SEPARATOR . 'main-sidebar.inc.php');
            ?>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <?php
                //QUERY STRING
                if (!empty($getexe)):
                    $includepatch = __DIR__ . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . strip_tags(trim($getexe) . '.php');
                else:
                    $includepatch = __DIR__ . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'home.php';
                endif;

                if (file_exists($includepatch)):
                    require_once($includepatch);
                else:
                    echo "<div class=\"content notfound\">";
                    WSErro("<b>Erro ao incluir tela:</b> Erro ao incluir o controller /{$getexe}.php!", WS_ERROR);
                    echo "</div>";
                endif;
                ?>
            </div><!-- /.content-wrapper -->
            <?php
            //Footer
            include(__DIR__ . DIRECTORY_SEPARATOR . 'system' . DIRECTORY_SEPARATOR . 'inc' . DIRECTORY_SEPARATOR . 'footer.inc.php');
            ?>
        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.3 -->
        <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- InputMask -->
        <script src="plugins/input-mask/jquery.inputmask.js" type="text/javascript"></script>
        <script src="plugins/input-mask/jquery.inputmask.date.extensions.js" type="text/javascript"></script>
        <script src="plugins/input-mask/jquery.inputmask.extensions.js" type="text/javascript"></script>
        <!-- DATA TABES SCRIPT -->
        <script src="plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <script src="plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
        <!-- CKEditor-->
        <script src="plugins/ckeditor/ckeditor.js" type="text/javascript"></script>
        <!-- FastClick -->
        <script src='plugins/fastclick/fastclick.min.js'></script>
        <!-- AdminLTE App -->
        <script src="dist/js/app.min.js" type="text/javascript"></script>
        <!-- Sparkline -->
        <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
        <!-- jvectormap -->
        <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
        <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
        <!-- datepicker -->
        <script src="plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- SlimScroll 1.3.0 -->
        <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
        <!-- ChartJS 1.0.1 -->
        <script src="plugins/chartjs/Chart.min.js" type="text/javascript"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="dist/js/demo.js" type="text/javascript"></script>

        <!-- Page script -->
        <script src="plugins/custom.js" type="text/javascript"></script>
    </body>
</html>
<?php
ob_end_flush();
