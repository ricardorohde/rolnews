<section class="content-header">
    <h1>
        Cadastrar Link 
        <small>Cadastros de Novo Link</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=links/listar">Links</a></li>
        <li class="active">Cadastrar Link</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            if (isset($dados) && $dados['SendPostForm']):
                unset($dados['SendPostForm']);

                require('_models/AdminLink.class.php');
                $cadastra = new AdminLink;
                $cadastra->ExeCreate($dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=links/listar&acao=cadastrar&id={$cadastra->getResult()}");
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Link</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="nome">Nome do Link</label>
                                    <input type="text" name="nome" class="form-control" id="nome" value="<?= isset($dados['nome']) ? $dados['nome'] : ''; ?>" placeholder="Informe o nome do Link">
                                </div>
                            </div>
                        </div>                        
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="link">Url do Link</label>
                                    <input type="text" name="link" class="form-control" id="link" value="<?= isset($dados['link']) ? $dados['link'] : ''; ?>" placeholder="Informe a URL do Link">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-8">
                                    <label for="id_tplink">Tipo do Link</label>
                                    <select name="id_tplink" class="form-control" id="id_conselho">
                                        <option value="">Selecione...</option>
                                        <?php
                                        $readTipo = new Read;
                                        $readTipo->ExeRead("links_tipo", "ORDER BY tipo_link ASC");
                                        if ($readTipo->getRowCount() >= 1):
                                            foreach ($readTipo->getResult() as $tip):
                                                echo "<option ";
                                                if ($dados['id_tplink'] == $tip['id_tplink']):
                                                    echo "selected=\"selected\" ";
                                                endif;
                                                echo "value=\"{$tip['id_tplink']}\"> &raquo;&raquo; {$tip['tipo_link']} </option>";
                                            endforeach;
                                        endif;
                                        ?>
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