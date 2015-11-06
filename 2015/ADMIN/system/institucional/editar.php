<section class="content-header">
    <h1>
        Dados Institucionais
        <small>Cadastros das informações institucionais</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=institucional/editar">Institucional</a></li>
        <li class="active">Editar Institucional</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            $idEdit = 1;
            if (isset($dados) && $dados['SendPostForm']):
                unset($dados['SendPostForm']);

                require('_models/AdminInstitucional.class.php');
                $cadastra = new AdminInstitucional;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                endif;
            else:
                $read = new Read;
                $read->ExeRead("institucional", "WHERE id = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    $dados = $read->getResult()[0];
                else:
                    $dados = $read->getResult()[0];
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Informações institucionais</h3></div>
                    <div class="box-body">                        
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <label for="sobre">Sobre</label>
                                    <textarea name="sobre" rows="10" class="form-control" id="editor">
                                        <?= isset($dados['sobre']) ? $dados['sobre'] : ''; ?>
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <label for="missao">Missão</label>
                                    <textarea name="missao" rows="10" class="form-control" id="missao">
                                        <?= isset($dados['missao']) ? $dados['missao'] : ''; ?>
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <label for="visao">Visão</label>
                                    <textarea name="visao" rows="10" class="form-control" id="editor">
                                        <?= isset($dados['visao']) ? $dados['visao'] : ''; ?>
                                    </textarea>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <label for="valores">Valores</label>
                                    <textarea name="valores" rows="10" class="form-control" id="editor">
                                        <?= isset($dados['valores']) ? $dados['valores'] : ''; ?>
                                    </textarea>
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