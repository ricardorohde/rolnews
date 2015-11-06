<section class="content-header">
    <h1>
        Add Fotos
        <small>Gestão de Fotos</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Add Fotos</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            $idTipo = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
            $tipo = filter_input(INPUT_GET, 'tipo', FILTER_SANITIZE_STRING);
            if (isset($dados) && $dados['SendPostForm']):
                #$dados['foto'] = ($_FILES['foto']['tmp_name'] ? $_FILES['foto'] : null);
                unset($dados['SendPostForm']);

                require('_models/AdminNoticia.class.php');
                if (!empty($_FILES['fotos']['tmp_name'])):
                    $sendFotos = new AdminNoticia;
                    $sendFotos->gbSend($_FILES['fotos'], $tipo, $idTipo);

                    if (!$sendFotos->getResult()):
                        WSErro($sendFotos->getError()[0], $sendFotos->getError()[1]);
                    else:
                        WSErro($sendFotos->getError()[0], $sendFotos->getError()[1]);
                    endif;
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Adicionar Mais Fotos</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-12 col-xs-12">
                                    <label for="foto">Selecione as Fotos</label>
                                    <input type="file" name="fotos[]" multiple class="form-control" id="foto">
                                    <p class="help-block">Pode ser enviado mais de uma imagem.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <input type="submit" name="SendPostForm" value="Adicionar Fotos" class="btn btn-flat btn-primary"/>
                    </div>
                </div>
            </form>
            <div class="box box-primary">
                <div class="box-header"><h3 class="box-title">Fotos da galeria</h3></div>
                <div class="box-body" id="foco">
                    <?php
                    $delFoto = filter_input(INPUT_GET, 'delfoto', FILTER_VALIDATE_INT);
                    if ($delFoto):
                        require_once('_models/AdminNoticia.class.php');
                        $delete = new AdminNoticia;
                        $delete->gbRemove($delFoto);

                        WSErro($delete->getError()[0], $delete->getError()[1]);
                    endif;
                    
                    $gbi = 0;
                    $foto = new Read;
                    $foto->ExeRead("banco_fotos", "WHERE id_tipo = :id", "id={$idTipo}");
                    if ($foto->getResult()):
                        ?>
                        <div class="row">
                            <ul>
                                <?php
                                foreach ($foto->getResult() as $gb):
                                    $gbi++;
                                    ?>
                                    <div class="col-md-2">
                                        <li class="thumbnail">
                                            <?= Check::Image('../uploads/' . $gb['foto'], $gbi, 146, 100, true); ?>
                                            <div class="text-center">
                                                <a href="painel.php?exe=noticias/addfotos&id=<?= $idTipo; ?>&tipo=<?= $tipo; ?>&delfoto=<?= $gb['id']; ?>#foco" class="btn btn-sm btn-danger"><b class="fa fa-trash-o"></b> Deletar</a>
                                            </div>
                                        </li>
                                    </div>
                                    <?php
                                endforeach;
                                ?>
                            </ul>
                        </div>
                        <?php
                    else:
                        WSErro("Não há nenhuma imagem cadastrada!", WS_ERROR);
                    endif;
                    ?>
                </div>
            </div>
        </div>
    </div>
</section>