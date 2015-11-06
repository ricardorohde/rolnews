<?php

/**
 * AdminLink.class [ MODEL ADMIN ]
 * Respnsável por gerenciar os links no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminLink {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'links';

    /**
     * <b>Cadastrar Links:</b> Envelopa os dados de uma agenda em um array atribuitivo e execute esse método
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
     * <b>Atualizar Links:</b> Envelopa os dados em uma array atribuitivo e informe o id de um
     * evento para atualiza-lo no sistema!
     * @param INT $LinkId = Id do link
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($LinkId, array $Data) {
        $this->Id = (int) $LinkId;
        $this->Data = $Data;
        $this->checkData();
        if ($this->getResult()):
            $this->Update();
        endif;
    }

    /**
     * <b>Remover Agenda:</b> Informe o ID do evento da agenda que deseja remover.
     * @param INT $LinkId = Id do link
     */
    public function ExeDelete($LinkId) {
        $this->Id = (int) $LinkId;

        $readVideo = new Read;
        $readVideo->ExeRead(self::Entity, "WHERE id = :id", "id={$this->Id}");

        if (!$readVideo->getResult()):
            $this->Error = ['Oppsss, você tentou remover um link que não existe no sistema!', WS_ERROR];
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
        else:
            $this->Result = true;
        endif;
    }
    
    //Cadastra Link
    private function Create() {
        $Create = new Create;
        $this->Data['qm_cadastr'] = $_SESSION['userlogin']['id'];

        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["O Link <b>{$this->Data['nome']}</b> foi cadastrado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Link
    private function Update() {
        $Update = new Update;
        $this->Data['qm_alterou'] = $_SESSION['userlogin']['id'];

        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["O Link <b>{$this->Data['nome']}</b> foi atualizado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Update->getResult();
        endif;
    }

    //Excluir Link
    private function Delete() {
        $Delete = new Delete;
        $Delete->ExeDelete(self::Entity, "WHERE id = :id", "id={$this->Id}");
        if ($Delete->getResult()):
            $this->Error = ["O link foi removido com sucesso do sistema!", WS_ACCEPT];
            $this->Result = true;
        endif;
    }

}
