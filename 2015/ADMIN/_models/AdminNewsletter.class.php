<?php

/**
 * AdminVideo.class [ MODEL ADMIN ]
 * Responsável por gerenciar as palavras dos presidentes no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminNewsletter {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'newsletter_user';

    /**
     * <b>Cadastrar Palavras:</b> Envelopa os dados de um array atribuitivo e execute esse método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();
        if ($this->getResult()):
            $this->Create();
        endif;
    }

    /**
     * <b>Atualizar Palavras:</b> Envelopa os dados em uma array atribuitivo e informe o id de um
     * registro para atualiza-lo no sistema!
     * @param INT $PalavrasId = Id do registro da palavras do presidente
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($PalavrasId, array $Data) {
        $this->Id = (int) $PalavrasId;
        $this->Data = $Data;
        $this->checkData();
        if ($this->getResult()):
            $this->Update();
        endif;
    }

    /**
     * <b>Remover Palavras:</b> Informe o ID do registro que deseja remover.
     * @param INT $PalavrasId = Id do video
     */
    public function ExeDelete($PalavrasId) {
        $this->Id = (int) $PalavrasId;

        $readVideo = new Read;
        $readVideo->ExeRead(self::Entity, "WHERE id_palavra = :id", "id={$this->Id}");

        if (!$readVideo->getResult()):
            $this->Error = ['Oppsss, você tentou remover um registro que não existe no sistema!', WS_ERROR];
            $this->Result = false;
        else:
            $this->Delete();
        endif;
    }

    /**
     * <b>Verificar Cadastro:</b> Retorna TRUE se o cadastro ou update for efetuado ou FALSE se não.
     * Para verificar erros execute um getError();
     * @return BOOL $Var = True or False
     */
    function getResult() {
        return $this->Result;
    }

    /**
     * <b>Obter Erro:</b> Retorna um array associativo com um erro e um tipo.
     * @return ARRAY $Error = Array associatico com o erro
     */
    function getError() {
        return $this->Error;
    }

    /*
     * ***************************************
     * **********  PRIVATE METHODS  **********
     * ***************************************
     */

    //Checa os dados
    private function checkData() {
        if (in_array('', $this->Data)):
            $this->Error = ["Existem campos em branco. Favor preencha todos os campos!", WS_ALERT];
            $this->Result = false;
        elseif ($this->checkEmail()):
            $this->Error = ["O e-email informado foi cadastrado no sistema por outro usuário! Informe outro e-mail!", WS_ERROR];
            $this->Result = false;
        else:
            $this->Result = true;
        endif;
    }
    
    //Verifica usuário pelo e-mail, Impede cadastro duplicado!
    private function checkEmail() {
        $Where = ( isset($this->Id) ? "id != {$this->Id} AND" : '');

        $readUser = new Read;
        $readUser->ExeRead(self::Entity, "WHERE {$Where} email = :e", "e={$this->Data['email']}");

        if ($readUser->getRowCount()):
            return true;
        endif;
    }

    //Seta os Dados
    private function setData() {
        $this->Data = array_map('strip_tags', $this->Data);
        $this->Data = array_map('trim', $this->Data);
    }

    //Cadastra Palavras
    private function Create() {
        $Create = new Create;
        $this->setData();

        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["Seu e-mail foi inserido em nossa lista!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Video
    private function Update() {
        $Update = new Update;
        $this->setData();

        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id_palavra = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["O registro foi atualizado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Update->getResult();
        endif;
    }

    //Excluir Video
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id_palavra = :id", "id={$this->Id}");
        if ($Delete->getResult()):
            $this->Error = ["Registro removido com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
