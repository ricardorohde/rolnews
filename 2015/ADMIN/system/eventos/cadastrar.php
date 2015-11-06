<section class="content-header">
    <h1>
        Cadastrar Evento
        <small>Cadastros de Novos Eventos</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=eventos/listar">Eventos</a></li>
        <li class="active">Cadastrar Evento</li>
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

                require('_models/AdminEvento.class.php');
                $cadastra = new AdminEvento;
                $cadastra->ExeCreate($dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=eventos/listar&acao=cadastrar&id={$cadastra->getResult()}");
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Evento</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="evento">Evento</label>
                                    <input type="text" name="evento" class="form-control" id="titulo" value="<?= isset($dados['evento']) ? $dados['evento'] : ''; ?>" placeholder="Informe o nome do Evento">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2 col-xs-8">
                                    <label for="data">Data do Evento</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="data" class="form-control" id="data" value="<?= isset($dados['data']) ? $dados['data'] : date('d/m/Y'); ?>" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="local">Local</label>
                                    <input type="text" name="local" class="form-control" id="local" value="<?= isset($dados['local']) ? $dados['local'] : ''; ?>" placeholder="Informe o Local do Evento">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="cidadeuf">Cidade / UF</label>
                                    <input type="text" name="cidadeuf" class="form-control" id="cidadeuf" value="<?= isset($dados['cidadeuf']) ? $dados['cidadeuf'] : ''; ?>" placeholder="Informe a Cidade - UF do Evento">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="foto">Foto Capa</label>
                                    <input type="file" name="foto" class="form-control" id="foto">
                                    <p class="help-block">Selecione a foto capa do evento.</p>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="fotografo">Fotografo</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-camera-retro"></i>
                                        </div>
                                        <input type="text" name="fotografo" class="form-control" id="fotografo" value="<?= isset($dados['fotografo']) ? $dados['fotografo'] : ''; ?>" placeholder="Informe o nome do Fotografo">
                                    </div>
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
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="SendPostForm" value="Cadastrar" class="btn btn-flat btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>