<section class="content-header">
    <h1>
        Editar Usuários 
        <small>Edição de Cadastros de Usuários</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="painel.php"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="painel.php?exe=usuarios/listar">Usuários</a></li>
        <li class="active">Editar Usuários</li>
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

                require('_models/AdminUser.class.php');
                $cadastra = new AdminUser;
                $cadastra->ExeUpdate($idEdit, $dados);

                if (!$cadastra->getResult()):
                    WSErro($cadastra->getError()[0], $cadastra->getError()[1]);
                else:
                    header("Location: painel.php?exe=usuarios/listar&acao=editar&id={$idEdit}");
                endif;
            else:
                $read = new Read;
                $read->ExeRead("usuarios", "WHERE id = :id", "id={$idEdit}");
                if (!$read->getResult()):
                    header("Location: painel.php?exe=usuarios/listar");
                else:
                    $dados = $read->getResult()[0];
                    unset($dados['senha']);
                    $dados['data_nasc'] = date('d/m/Y', strtotime($dados['data_nasc']));
                endif;
            endif;
            ?>
            <form role="form" name="UserCreateForm" action="" method="post" enctype="multipart/form-data">
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados do Perfil</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="nome">Nome</label>
                                    <input type="text" name="nome" class="form-control" id="nome" value="<?= isset($dados['nome']) ? $dados['nome'] : ''; ?>" placeholder="Informe o nome do usuário">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="email">E-mail</label>
                                    <input type="email" name="email" class="form-control" id="email" value="<?= isset($dados['email']) ? $dados['email'] : ''; ?>" placeholder="Informe o e-mail do usuário">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-2">
                                    <label for="data_nasc">Data de Nascimento:</label>
                                    <div class="input-group">
                                        <div class="input-group-addon">
                                            <i class="fa fa-calendar"></i>
                                        </div>
                                        <input type="text" name="data_nasc" class="form-control" id="data_nasc" value="<?= isset($dados['data_nasc']) ? $dados['data_nasc'] : ''; ?>" data-inputmask="'alias': 'dd/mm/yyyy'" data-mask/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-3">
                                    <label for="sexo">Sexo</label>
                                    <select name="sexo" class="form-control" id="sexo">
                                        <option value="" <?= ($dados['sexo'] == '') ? ' selected="selected"' : ''; ?>>Selecione uma opção</option>
                                        <option value="1" <?= ($dados['sexo'] == 1) ? ' selected="selected"' : ''; ?>>Masculino</option>
                                        <option value="2" <?= ($dados['sexo'] == 2) ? ' selected="selected"' : ''; ?>>Feminino</option>
                                        <option value="3" <?= ($dados['sexo'] == 3) ? ' selected="selected"' : ''; ?>>Não quero informar</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label for="foto">Foto do Perfil</label>
                                    <input type="file" name="foto" class="form-control" id="foto">
                                    <p class="help-block">Selecione a foto do perfil do usuário.</p>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-md-3 col-xs-8">
                                    <label for="colunista">É Colunista?</label>
                                    <select name="colunista" class="form-control" id="sexo">
                                        <option value="nao" <?= ($dados['colunista'] == 'nao') ? ' selected="selected"' : ''; ?>>Não</option>
                                        <option value="sim" <?= ($dados['colunista'] == 'sim') ? ' selected="selected"' : ''; ?>>Sim</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="box box-primary">
                    <div class="box-header"><h3 class="box-title">Dados de Acesso</h3></div>
                    <div class="box-body">
                        <div class="form-group">
                            <div class="col-md-12">
                                <label for="altDadosAcess">
                                    <input type="checkbox" name="altDadosAcess" id="altDadosAcess" />
                                    Alterar os dados de acesso?<br>
                                </label>
                            </div>
                        </div>

                        <div class="form-group dadosAcess">
                            <div class="row">
                                <div class="col-xs-3">
                                    <label for="login">Login</label>
                                    <input type="text" name="login" class="form-control" id="login" value="<?= isset($dados['login']) ? $dados['login'] : ''; ?>" placeholder="Informe o login do usuário">
                                </div>
                            </div>
                        </div>
                        <div class="form-group dadosAcess">
                            <div class="row">
                                <div class="col-xs-3">
                                    <label for="senha">Senha</label>
                                    <input type="password" name="senha" class="form-control" id="senha" value="<?= isset($dados['senha']) ? $dados['senha'] : ''; ?>" placeholder="Informe a senha do usuário">
                                </div>
                            </div>
                        </div><br>
                        <div class="box-footer">
                            <input type="submit" name="SendPostForm" value="Editar" class="btn btn-flat btn-primary"/>
                        </div>
                    </div>
                </div>
            </form>

        </div>
    </div>
</section>