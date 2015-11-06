<?php
ob_start();
session_start();
require('../_app/Config.inc.php');
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>PAINEL DE CONTROLE v.4.0 - CREATIVE WEBSITES</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- Bootstrap 3.3.2 -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome Icons -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
        <!-- iCheck -->
        <link href="plugins/iCheck/square/blue.css" rel="stylesheet" type="text/css" />
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    </head>
    <body class="login-page">
        <div class="login-box">
            <div class="login-logo">
                <a href="painel.php"><b>PAINEL DE CONTROLE</b></a>
            </div><!-- /.login-logo -->
            <div class="login-box-body">
                <p class="login-box-msg">
                    <?php
                    $login = new Login(1);
                    if ($login->CheckLogin()):
                        header('Location: painel.php');
                    endif;

                    $dataLogin = filter_input_array(INPUT_POST, FILTER_DEFAULT);
                    if (!empty($dataLogin['AdminLogin'])):
                        $login->ExeLogin($dataLogin);
                        if (!$login->getResult()):
                            WSErro($login->getError()[0], $login->getError()[1]);
                        else:
                            header('Location: painel.php');
                        endif;
                    endif;

                    $get = filter_input(INPUT_GET, 'exe', FILTER_DEFAULT);
                    if (!empty($get)):
                        if ($get == 'restrito'):
                            WSErro('<b>Oppsss:</b> Acesso negado.<br> Favor efetue login para acessar o painel!', WS_ALERT);
                        elseif ($get == 'logoff'):
                            WSErro('<b>Sucesso ao deslogar</b><br> Sua sessão foi finalizada. Volte sempre!', WS_ACCEPT);
                        endif;
                    endif;
                    ?>
                </p>
                <form  name="AdminLoginForm" action="" method="post">
                    <div class="form-group has-feedback">
                        <input type="text" name="login" class="form-control" placeholder="Login"/>
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <input type="password" name="senha" class="form-control" placeholder="Senha"/>
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <input type="submit" name="AdminLogin" value="Entrar" class="btn btn-primary btn-block btn-flat"/>
                        </div><!-- /.col -->
                    </div>
                </form>
                <br>
                <a href="#">Esqueceu sua Senha?</a>

            </div><!-- /.login-box-body -->
        </div><!-- /.login-box -->

        <!-- jQuery 2.1.3 -->
        <script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function () {
                /*Esconde avisos*/
                $('.alert').delay(5000).fadeOut(1000);
            });
        </script>
    </body>
</html>
<?php
ob_end_flush();
