<?php

/**
 * AdminUser.class [ MODEL ADMIN ]
 * Respnsável por gerenciar os usuários no Admin do sistema!
 * 
 * @copyright (c) 2014, Robson V. Leite UPINSIDE TECNOLOGIA
 */
class AdminUser {

    private $Data;
    private $User;
    private $Error;
    private $Result;

    //Nome da tabela no banco de dados
    const Entity = 'usuarios';

    /**
     * <b>Cadastrar Usuário:</b> Envelope os dados de um usuário em um array atribuitivo e execute esse método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();

        if ($this->Data['foto']):
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['login'], 480, 'usuarios');
        endif;

        if (isset($upload) && $upload->getResult()):
            $this->Data['foto'] = $upload->getResult();
            $this->Create();
        else:
            $this->Data['foto'] = NULL;
            $this->Create();
        endif;
    }

    /**
     * <b>Atualizar Usuário:</b> Envelope os dados em uma array atribuitivo e informe o id de um
     * usuário para atualiza-lo no sistema!
     * @param INT $UserId = Id do usuário
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($UserId, array $Data) {
        $this->User = (int) $UserId;
        $this->Data = $Data;

        if (!$this->Data['senha']):
            unset($this->Data['senha']);
        endif;

        $this->checkData();

        if (is_array($this->Data['foto'])):
            $this->fotoDelete($this->User);
            $upload = new Upload;
            $upload->Image($this->Data['foto'], $this->Data['login'], 480, 'usuarios');
        endif;

        if (isset($upload) && $upload->getResult()):
            $this->Data['foto'] = $upload->getResult();
            $this->Update();
        else:
            unset($this->Data['foto']);
            $this->Update();
        endif;
    }

    /**
     * <b>Remover Usuário:</b> Informe o ID do usuário que deseja remover. Este método não permite deletar
     * o próprio perfil ou ainda remover todos os ADMIN'S do sistema!
     * @param INT $UserId = Id do usuário
     */
    public function ExeDelete($UserId) {
        $this->User = (int) $UserId;

        $readUser = new Read;
        $readUser->ExeRead(self::Entity, "WHERE id = :id", "id={$this->User}");

        if (!$readUser->getResult()):
            $this->Error = ['Oppsss, você tentou remover um usuário que não existe no sistema!', WS_ERROR];
            $this->Result = false;
        elseif ($this->User == $_SESSION['userlogin']['id']):
            $this->Error = ['Oppsss, você tentou remover seu usuário. Essa ação não é permitida!!!', WS_INFOR];
            $this->Result = false;
        else:
            if ($readUser->getResult()[0]['nivel'] == 1):

                $readAdmin = $readUser;
                $readAdmin->ExeRead(self::Entity, "WHERE id != :id AND nivel = :lv", "id={$this->User}&lv=1");

                if (!$readAdmin->getRowCount()):
                    $this->Error = ['Oppsss, você está tentando remover o único ADMIN do sistema. Para remover cadastre outro antes!!!', WS_ERROR];
                    $this->Result = false;
                else:
                    $this->fotoDelete($this->User);
                    $this->Delete();
                endif;

            else:
                $this->fotoDelete($this->User);
                $this->Delete();
            endif;

        endif;
    }

    /**
     * <b>Verificar Cadastro:</b> Retorna TRUE se o cadastro ou update for efetuado ou FALSE se não.
     * Para verificar erros execute um getError();
     * @return BOOL $Var = True or False
     */
    public function getResult() {
        return $this->Result;
    }

    /**
     * <b>Obter Erro:</b> Retorna um array associativo com um erro e um tipo.
     * @return ARRAY $Error = Array associatico com o erro
     */
    public function getError() {
        return $this->Error;
    }

    /*
     * ***************************************
     * **********  PRIVATE METHODS  **********
     * ***************************************
     */

    //Verifica os dados digitados no formulário
    private function checkData() {
        if (in_array('', $this->Data)):
            $this->Error = ["Existem campos em branco. Favor preencha todos os campos!", WS_ALERT];
            $this->Result = false;
        elseif (!Check::Email($this->Data['email'])):
            $this->Error = ["O e-email informado não parece ter um formato válido!", WS_ALERT];
            $this->Result = false;
        elseif (isset($this->Data['senha']) && (strlen($this->Data['senha']) < 6 || strlen($this->Data['senha']) > 12)):
            $this->Error = ["A senha deve ter entre 6 e 12 caracteres!", WS_INFOR];
            $this->Result = false;
        elseif ($this->checkEmail()):
            $this->Error = ["O e-email informado foi cadastrado no sistema por outro usuário! Informe outro e-mail!", WS_ERROR];
            $this->Result = false;
        else:
            $this->checkLogin();
        endif;
    }

    //Verifica usuário pelo e-mail, Impede cadastro duplicado!
    private function checkEmail() {
        $Where = ( isset($this->User) ? "id != {$this->User} AND" : '');

        $readUser = new Read;
        $readUser->ExeRead(self::Entity, "WHERE {$Where} email = :e", "e={$this->Data['email']}");

        if ($readUser->getRowCount()):
            return true;
        endif;
    }

    //Verifica login, Impede cadastro duplicado!
    private function checkLogin() {
        if (empty($this->Data['login'])):
            $this->Error = ["É obrigatório o preenchimento do LOGIN!", WS_ERROR];
            $this->Result = false;
        else:
            $Where = ( isset($this->User) ? "id != {$this->User} AND" : '');
            $readUser = new Read;
            $readUser->ExeRead(self::Entity, "WHERE {$Where} login = :l", "l={$this->Data['login']}");

            if ($readUser->getRowCount()):
                $this->Error = ["O login informado foi cadastrado no sistema por outro usuário! Informe outro login!", WS_ERROR];
                $this->Result = false;
            else:
                $this->Result = true;
            endif;
        endif;
    }

    //SetData
    private function setData() {
        $this->Data['data_nasc'] = Check::Data($this->Data['data_nasc']);
        $this->Data['nivel'] = 1;
    }

    //Excluir a Foto
    private function fotoDelete($UserId) {
        $this->User = (int) $UserId;

        $readFoto = new Read;
        $readFoto->ExeRead(self::Entity, "WHERE id = :id", "id={$this->User}");
        $foto = "../uploads/{$readFoto->getResult()[0]['foto']}";
        if (file_exists($foto) && !is_dir($foto)):
            unlink($foto);
        endif;
    }

    //Cadasrtra Usuário!
    private function Create() {
        $Create = new Create;
        $this->Data['senha'] = md5($this->Data['senha']);
        $this->setData();
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["O usuário <b>{$this->Data['nome']}</b> foi cadastrado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Usuário!
    private function Update() {
        $Update = new Update;
        if (isset($this->Data['senha'])):
            $this->Data['senha'] = md5($this->Data['senha']);
        endif;
        $this->setData();
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->User}");
        if ($Update->getResult()):
            $this->Error = ["O usuário <b>{$this->Data['login']}</b> foi atualizado com sucesso!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

    //Remove Usuário
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id = :id", "id={$this->User}");
        if ($Delete->getResult()):
            $this->Error = ["Usuário removido com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
