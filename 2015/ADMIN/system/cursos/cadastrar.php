<section class="content-header">
    <h1>
        Cadastrar Cursos
        <small>Cadastros de Novos Cursos</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=cursos/listar">Cursos</a></li>
        <li class="active">Cadastrar Curso</li>
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

                require('_models/AdminCurso.class.php');
                $cadastra = new AdminCurso;
                $cadastra->ExeCreate($dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=cursos/listar&acao=cadastrar&id={$cadastra->getResult()}");
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Curso</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="curso">Curso</label>
                                    <input type="text" name="curso" class="form-control" id="curso" value="<?= isset($dados['curso']) ? $dados['curso'] : ''; ?>" placeholder="Informe o nome do curso">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="link">Link do Curso</label>
                                    <input type="text" name="link" class="form-control" id="link" value="<?= isset($dados['link']) ? $dados['link'] : ''; ?>" placeholder="Informe o endereço do curso">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="foto">Capa</label>
                                    <input type="file" name="foto" class="form-control" id="foto">
                                    <p class="help-block">Selecione a foto da capa do curso.</p>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-8 col-xs-12">
                                    <label for="descricao">Descrição</label>
                                    <textarea name="descricao" rows="10" class="form-control" id="editor">
                                        <?= isset($dados['descricao']) ? $dados['descricao'] : ''; ?>
                                    </textarea>
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