<section class="content-header">
    <h1>
        Editar Conselho 
        <small>Edição de Cadastros dos Conselhos</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=conselhos/listar">Conselho</a></li>
        <li class="active">Editar Conselho</li>
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

                require('_models/AdminConselho.class.php');
                $cadastra = new AdminConselho;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=conselhos/listar&acao=editar&id={$idEdit}");
                endif;
            else:
                $read = new Read;
                $read->ExeRead("conselhos", "WHERE id_conselho = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    header("Location: painel.php?exe=conselhos/listar");
                else:
                    $dados = $read->getResult()[0];
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Conselho</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="conselho">Conselho</label>
                                    <input type="text" name="conselho" class="form-control" id="titulo" value="<?= isset($dados['conselho']) ? $dados['conselho'] : ''; ?>" placeholder="Informe o nome do Conselho">
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