<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Listar Usuários
        <small>Lista os cadastros de usuários</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=usuarios/listar">Usuários</a></li>
        <li class="active">Listar Usuários</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <?php
            $acao = filter_input(INPUT_GET, 'acao', FILTER_SANITIZE_STRING);
            $acaoId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

            require('_models/AdminUser.class.php');
            $readAcao = new AdminUser;

            $readMsg = new Read;
            $readMsg->ExeRead('usuarios', "WHERE id = :id", "id={$acaoId}");
            switch ($acao):
                case 'cadastrar':
                    $msg = $readMsg->getResult()[0];
                    WSErro("O usuário <b>{$msg['login']}</b> foi cadastrado com sucesso!", WS_ACCEPT);
                    break;
                case 'editar':
                    $msg = $readMsg->getResult()[0];
                    WSErro("O usuário <b>{$msg['login']}</b> foi atualizado com sucesso!", WS_ACCEPT);
                    break;
                case 'excluir':
                    $readAcao->ExeDelete($acaoId);
                    WSErro($readAcao->getError()[0], $readAcao->getError()[1]);
                    break;
            endswitch;
            ?>
            <div class="box box-primary">
                <div class="box-body">
                    <table id="tableView" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>Nome</th>
                                <th>E-mail</th>
                                <th>Login</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $readUser = new Read;
                            $readUser->ExeRead("usuarios", "WHERE login != :l", "l= ''");
                            if (!$readUser->getResult()):

                            else:
                                foreach ($readUser->getResult() as $user):
                                    ?>
                                    <tr>
                                        <td><?= $user['id']; ?></td>
                                        <td><?= $user['nome']; ?></td>
                                        <td><?= $user['email']; ?></td>
                                        <td><?= $user['login']; ?></td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="painel.php?exe=usuarios/editar&id=<?= $user['id']; ?>" class="btn btn-flat btn-primary btn-sm"><b class="fa fa-edit"></b> Editar</a>
                                                <a href="painel.php?exe=usuarios/listar&acao=excluir&id=<?= $user['id']; ?>" class="btn btn-flat btn-danger btn-sm"><b class="fa fa-trash-o"></b> Excluir</a>
                                            </div>                                           
                                        </td>
                                    </tr>
                                    <?php
                                endforeach;
                            endif;
                            ?>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->
</section><!-- /.content -->