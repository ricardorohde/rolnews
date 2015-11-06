<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Listar Eventos da Agenda
        <small>Lista os cadastros de agenda</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=agenda/listar">Agenda</a></li>
        <li class="active">Listar Agenda</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <?php
            $acao = filter_input(INPUT_GET, 'acao', FILTER_SANITIZE_STRING);
            $acaoId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

            require('_models/AdminAgenda.class.php');
            $readAcao = new AdminAgenda;

            $readMsg = new Read;
            $readMsg->ExeRead('agenda', "WHERE id = :id", "id={$acaoId}");
            switch ($acao):
                case 'cadastrar':
                    $msg = $readMsg->getResult()[0];
                    WSErro("O evento <b>{$msg['evento']}</b> da Agenda foi cadastrado com sucesso!", WS_ACCEPT);
                    break;
                case 'editar':
                    $msg = $readMsg->getResult()[0];
                    WSErro("O evento <b>{$msg['evento']}</b> da Agenda foi atualizado com sucesso!", WS_ACCEPT);
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
                                <th>Evento</th>
                                <th>Data</th>
                                <th>Local</th>
                                <th>Ação</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $readUser = new Read;
                            $readUser->ExeRead("agenda", "WHERE evento != :e", "e= ''");
                            if (!$readUser->getResult()):

                            else:
                                foreach ($readUser->getResult() as $reg):
                                    ?>
                                    <tr>
                                        <td><?= $reg['id']; ?></td>
                                        <td><?= $reg['evento']; ?></td>
                                        <td><?= date('d/m/Y H:i:s', strtotime($reg['data'])); ?></td>
                                        <td><?= Check::Words($reg['local'], 10 ); ?></td>
                                        <td>
                                            <div class="btn-group">
                                                <a href="painel.php?exe=agenda/editar&id=<?= $reg['id']; ?>" class="btn btn-flat btn-primary btn-sm"><b class="fa fa-edit"></b> Editar</a>
                                                <a href="painel.php?exe=agenda/listar&acao=excluir&id=<?= $reg['id']; ?>" class="btn btn-flat btn-danger btn-sm"><b class="fa fa-trash-o"></b> Excluir</a>
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