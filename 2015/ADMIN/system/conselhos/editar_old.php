<section class="content-header">
    <h1>
        Cadastrar Conselho 
        <small>Cadastros de Nova Agenda</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=agenda/listar">Agenda</a></li>
        <li class="active">Cadastrar Agenda</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            $idEdit = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
            if (isset($dados) && $dados['SendPostForm']):
                unset($dados['SendPostForm']);

                require('_models/AdminAgenda.class.php');
                $cadastra = new AdminAgenda;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=agenda/listar&acao=editar&id={$idEdit}");
                endif;
            else:
                $read = new Read;
                $read->ExeRead("agenda", "WHERE id = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    header("Location: painel.php?exe=agenda/listar");
                else:
                    $dados = $read->getResult()[0];
                    $dados['data'] = date('d/m/Y H:i', strtotime($dados['data']));
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados da Agenda</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="evento">Evento</label>
                                    <input type="text" name="evento" class="form-control" id="titulo" value="<?= isset($dados['evento']) ? $dados['evento'] : ''; ?>" placeholder="Informe o titulo do Evento">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3 col-xs-6">
                                    <label for="data">Data do Evento</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="data" class="form-control" id="data" value="<?= isset($dados['data']) ? $dados['data'] : date('d/m/Y H:i'); ?>" data-inputmask="'alias': 'datetime'" datetime-mask/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="local">Local</label>
                                    <input type="text" name="local" class="form-control" id="autor" value="<?= isset($dados['local']) ? $dados['local'] : ''; ?>" placeholder="Informe o Local do evento">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="SendPostForm" value="Editar" class="btn btn-flat btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>