<section class="content-header">
    <h1>
        Cadastrar Equipe 
        <small>Cadastros de Equipe</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=equipe/listar">Equipe</a></li>
        <li class="active">Cadastrar Equipe</li>
    </ol>
</section>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <?php
            $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
            if (isset($dados) && $dados['SendPostForm']):
                unset($dados['SendPostForm']);

                require('_models/AdminEquipe.class.php');
                $cadastra = new AdminEquipe;
                $cadastra->ExeCreate($dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=equipe/listar&acao=cadastrar&id={$cadastra->getResult()}");
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados da Equipe</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="nome">Nome</label>
                                    <input type="text" name="nome" class="form-control" id="nome" value="<?= isset($dados['nome']) ? $dados['nome'] : ''; ?>" placeholder="Informe o NOME do integrante da Equipe">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-2 col-xs-6">
                                    <label for="telefone">Telefone</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-phone"></i>
                                        </div>
                                        <input type="text" name="telefone" class="form-control" id="telefone" value="<?= isset($dados['telefone']) ? $dados['telefone'] : ''; ?>" data-inputmask="'alias': 'phone'" phone-mask/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="email">E-mail</label>
                                    <input type="email" name="email" class="form-control" id="email" value="<?= isset($dados['email']) ? $dados['email'] : ''; ?>" placeholder="Informe o E-mail">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-12">
                                    <label for="cargo">Cargo</label>
                                    <input type="text" name="cargo" class="form-control" id="cargo" value="<?= isset($dados['cargo']) ? $dados['cargo'] : ''; ?>" placeholder="Informe o Cargo">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-6 col-xs-8">
                                    <label for="id_conselho">Pertence</label>
                                    <select name="id_conselho" class="form-control" id="id_conselho">
                                        <option value="">Selecione...</option>
                                        <?php
                                        $readCons = new Read;
                                        $readCons->ExeRead("conselhos", "ORDER BY conselho ASC");
                                        if ($readCons->getRowCount() >= 1):
                                            foreach ($readCons->getResult() as $cons):
                                                echo "<option ";
                                                if ($dados['id_conselho'] == $cons['id_conselho']):
                                                    echo "selected=\"selected\" ";
                                                endif;
                                                echo "value=\"{$cons['id_conselho']}\"> &raquo;&raquo; {$cons['conselho']} </option>";
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