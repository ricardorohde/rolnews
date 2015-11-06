<section class="content-header">
    <h1>
        Editar Revistas
        <small>Edição de Cadastros de Revistas</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=revistas/listar">Revistas</a></li>
        <li class="active">Editar Revista</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            $idEdit = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

            if (isset($dados) && $dados['SendPostForm']):
                $dados['foto'] = ($_FILES['foto']['tmp_name'] ? $_FILES['foto'] : 'null');
                unset($dados['SendPostForm']);

                require('_models/AdminRevista.class.php');
                $cadastra = new AdminRevista;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=revistas/listar&acao=editar&id={$idEdit}");
                endif;
            else:
                $read = new Read;
                $read->ExeRead("revistas", "WHERE id = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    header("Location: painel.php?exe=revistas/listar");
                else:
                    $dados = $read->getResult()[0];
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados da Revista</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="titulo">Titulo</label>
                                    <input type="text" name="titulo" class="form-control" id="titulo" value="<?= isset($dados['titulo']) ? $dados['titulo'] : ''; ?>" placeholder="Informe o titulo da revista">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="edicao">Edição</label>
                                    <input type="text" name="edicao" class="form-control" id="edicao" value="<?= isset($dados['edicao']) ? $dados['edicao'] : ''; ?>" placeholder="Informe a edição da revista">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="link">Link</label>
                                    <input type="text" name="link" class="form-control" id="link" value="<?= isset($dados['link']) ? $dados['link'] : ''; ?>" placeholder="Informe o link da revista">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="foto">Capa</label>
                                    <input type="file" name="foto" class="form-control" id="foto">
                                    <p class="help-block">Selecione a foto da capa da revista.</p>
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