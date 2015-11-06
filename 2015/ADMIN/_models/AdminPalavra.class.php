<?php

/**
 * AdminVideo.class [ MODEL ADMIN ]
 * Respnsável por gerenciar as palavras dos presidentes no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminPalavra {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'presidentes_palavra';

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
        else:
            $this->Result = true;
        endif;
    }

    //Seta os Dados
    private function setData() {
        $this->Data['id_presidente'] = $this->getPresidente();
    }

     //Obtem o ID do presidente na tabela institucional
    private function getPresidente() {
        $rPres = new Read;
        $rPres->ExeRead("institucional", "WHERE id = :id", "id=1");
        if ($rPres->getResult()):
            return $rPres->getResult()[0]['id_presidente'];
        else:
            return null;
        endif;
    }
    
    
    //Cadastra Palavras
    private function Create() {
        $Create = new Create;
        $this->setData();

        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["O registro foi cadastrado com sucesso no sistema!", WS_ACCEPT];
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
