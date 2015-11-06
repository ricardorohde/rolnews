<section class="content-header">
    <h1>
        Cadastrar Presidentes
        <small>Cadastros de Novos Presidentes</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=presidentes/listar">Presidentes</a></li>
        <li class="active">Cadastrar Presidente</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            if (isset($dados) && $dados['SendPostForm']):
                $dados['foto'] = ($_FILES['foto']['tmp_name'] ? $_FILES['foto'] : null);
                unset($dados['SendPostForm']);

                require('_models/AdminPresidente.class.php');
                $cadastra = new AdminPresidente;
                $cadastra->ExeCreate($dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=presidentes/listar&acao=cadastrar&id={$cadastra->getResult()}");
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Presidente</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="presidente">Presidente</label>
                                    <input type="text" name="presidente" class="form-control" id="presidente" value="<?= isset($dados['presidente']) ? $dados['presidente'] : ''; ?>" placeholder="Informe o nome do Presidente">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="foto">Foto do Presidente</label>
                                    <input type="file" name="foto" class="form-control" id="foto">
                                    <p class="help-block">Selecione a foto do presidente.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="SendPostForm" value="Cadastrar" class="btn btn-flat btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>