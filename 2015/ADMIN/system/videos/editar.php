<section class="content-header">
    <h1>
        Editar Videos 
        <small>Edição de Cadastros de Videos</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=videos/listar">Videos</a></li>
        <li class="active">Editar Videos</li>
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

                require('_models/AdminVideo.class.php');
                $cadastra = new AdminVideo;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=videos/listar&acao=editar&id={$idEdit}");
                endif;
            else:
                $read = new Read;
                $read->ExeRead("videos", "WHERE id = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    header("Location: painel.php?exe=videos/listar");
                else:
                    $dados = $read->getResult()[0];
                    $dados['data'] = date('d/m/Y', strtotime($dados['data']));
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Video</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="titulo">Titulo</label>
                                    <input type="text" name="titulo" class="form-control" id="titulo" value="<?= isset($dados['titulo']) ? $dados['titulo'] : ''; ?>" placeholder="Informe o titulo do video">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="url">Url do Video do YouTube</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-youtube-play"></i>
                                        </div>
                                        <input type="text" name="url" class="form-control" id="url" value="<?= isset($dados['url']) ? $dados['url'] : ''; ?>" placeholder="Informe a url do video do YouTube">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-2">
                                    <label for="data">Data do Video</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="data" class="form-control" id="data" value="<?= isset($dados['data']) ? date('d/m/Y', strtotime($dados['data'])) : date('d/m/Y'); ?>" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-3">
                                    <label for="destaque">Em Destaque</label>
                                    <select name="destaque" class="form-control" id="sexo">
                                        <option value="" <?= ($dados['destaque'] == '') ? ' selected="selected"' : ''; ?>>Selecione uma opção</option>
                                        <option value="sim" <?= ($dados['destaque'] == 'sim') ? ' selected="selected"' : ''; ?>>Sim</option>
                                        <option value="nao" <?= ($dados['destaque'] == 'nao') ? ' selected="selected"' : ''; ?>>Não</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="autor">Autor</label>
                                    <input type="text" name="autor" class="form-control" id="autor" value="<?= isset($dados['autor']) ? $dados['autor'] : ''; ?>" placeholder="Informe o autor do Video">
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