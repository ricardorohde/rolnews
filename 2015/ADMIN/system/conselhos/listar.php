<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Listar Conselhos
        <small>Lista os cadastros de Conselhos</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=conselhos/listar">Conselho</a></li>
        <li class="active">Listar Conselho</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <?php
            $acao = filter_input(INPUT_GET, 'acao', FILTER_SANITIZE_STRING);
            $acaoId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

            require('_models/AdminConselho.class.php');
            $readAcao = new AdminConselho;

            $readMsg = new Read;
            $readMsg->ExeRead('conselhos', "WHERE id_conselho = :id", "id={$acaoId}");
            switch ($acao):
                case 'cadastrar':
                    $msg = $readMsg->getResult()[0];
                    WSErro("O Consleho <b>{$msg['conselho']}</b> foi cadastrado com sucesso!", WS_ACCEPT);
                    break;
                case 'editar':
                    $msg = $readMsg->getResult()[0];
                    WSErro("O Conselho <b>{$msg['conselho']}</b> foi atualizado com sucesso!", WS_ACCEPT);
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
                                <th>Conselho</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $readUser = new Read;
                            $readUser->ExeRead("conselhos", "WHERE conselho != :c", "c= ''");
                            if (!$readUser->getResult()):

                            else:
                                foreach ($readUser->getResult() as $reg):
                                    ?>
                                    <tr>
                                        <td><?= $reg['id_conselho']; ?></td>
                                        <td><?= $reg['conselho']; ?></td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="painel.php?exe=conselhos/editar&id=<?= $reg['id_conselho']; ?>" class="btn btn-flat btn-primary btn-sm"><b class="fa fa-edit"></b> Editar</a>
                                                <a href="painel.php?exe=conselhos/listar&acao=excluir&id=<?= $reg['id_conselho']; ?>" class="btn btn-flat btn-danger btn-sm"><b class="fa fa-trash-o"></b> Excluir</a>
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