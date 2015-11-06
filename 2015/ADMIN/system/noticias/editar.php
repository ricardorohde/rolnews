<section class="content-header">
    <h1>
        Editar Notícias
        <small>Edição de Cadastros de Notícias</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=noticias/listar">Notícias</a></li>
        <li class="active">Editar Notícias</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            $idEdit = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

            if (isset($dados) && $dados['SendPostForm']):
                $dados['foto'] = ($_FILES['foto']['tmp_name'] ? $_FILES['foto'] : null);
                unset($dados['SendPostForm']);

                require('_models/AdminNoticia.class.php');
                $cadastra = new AdminNoticia;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=noticias/listar&acao=editar&id={$idEdit}");
                endif;
            else:
                $read = new Read;
                $read->ExeRead("noticias", "WHERE id = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    header("Location: painel.php?exe=noticias/listar");
                else:
                    $dados = $read->getResult()[0];
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados da Notícia</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="titulo">Titulo</label>
                                    <input type="text" name="titulo" class="form-control" id="titulo" value="<?= isset($dados['titulo']) ? $dados['titulo'] : ''; ?>" placeholder="Informe o Titulo da Notícia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="subtitulo">Sub-titulo</label>
                                    <input type="text" name="subtitulo" class="form-control" id="subtitulo" value="<?= isset($dados['subtitulo']) ? $dados['subtitulo'] : ''; ?>" placeholder="Informe o Sub-Titulo da Notícia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="colunista">Colunista / Autor</label>
                                    <input type="text" name="colunista" class="form-control" id="colunista" value="<?= isset($dados['colunista']) ? $dados['colunista'] : ''; ?>" placeholder="Informe o Autor da Notícia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="fonte">Fonte</label>
                                    <input type="text" name="fonte" class="form-control" id="fonte" value="<?= isset($dados['fonte']) ? $dados['fonte'] : ''; ?>" placeholder="Informe a Fonte da Notícia">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2 col-xs-8">
                                    <label for="destaque">Em Destaque</label>
                                    <select name="destaque" class="form-control" id="sexo">
                                        <option value="" <?= ($dados['destaque'] == '') ? ' selected="selected"' : ''; ?>>Selecione...</option>
                                        <option value="sim" <?= ($dados['destaque'] == 'sim') ? ' selected="selected"' : ''; ?>>Sim</option>
                                        <option value="nao" <?= ($dados['destaque'] == 'nao') ? ' selected="selected"' : ''; ?>>Não</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="foto">Foto Capa</label>
                                    <input type="file" name="foto" class="form-control" id="foto">
                                    <p class="help-block">Selecione a foto cada da notícia.</p>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="video">Url do Video do YouTube</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-youtube-play"></i>
                                        </div>
                                        <input type="text" name="video" class="form-control" id="video" value="<?= isset($dados['video']) ? $dados['video'] : ''; ?>" placeholder="Informe a url do video do YouTube para Adicionar na Noticia">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-8 col-xs-12">
                                    <label for="noticia">Notícia</label>
                                    <textarea name="noticia" rows="10" class="form-control" id="editor">
                                        <?= isset($dados['noticia']) ? $dados['noticia'] : ''; ?>
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