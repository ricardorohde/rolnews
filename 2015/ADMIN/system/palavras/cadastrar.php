<section class="content-header">
    <h1>
        Cadastrar Palavras do Presidente
        <small>Cadastros de Palavras do Presidente</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=palavras/listar">Palavras</a></li>
        <li class="active">Cadastrar Palavras</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            if (isset($dados) && $dados['SendPostForm']):
                unset($dados['SendPostForm']);

                require('_models/AdminPalavra.class.php');
                $cadastra = new AdminPalavra;
                $cadastra->ExeCreate($dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=palavras/listar&acao=cadastrar&id={$cadastra->getResult()}");
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados da Palavra do Presidente</h3></div>
                    <div class="box-body">                        
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-8 col-xs-12">
                                    <label for="palavras">Texto (Palavras do Presidente)</label>
                                    <textarea name="palavras" rows="10" class="form-control" id="editor">
                                        <?= isset($dados['palavras']) ? $dados['palavras'] : ''; ?>
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