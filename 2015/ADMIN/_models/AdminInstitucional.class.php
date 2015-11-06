<?php

/**
 * AdminInstitucional.class [ MODEL ADMIN ]
 * Respnsável por gerenciar as informações institucionais no Admin do sistema!
 * 
 * @copyright (c) 2014, Gean Marques - CREATIVE WEBSITES
 */
class AdminInstitucional {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'institucional';

    /**
     * <b>Atualizar Institucional:</b> Envelopa os dados em uma array atribuitivo e informe o id de um
     * registro para atualiza-lo no sistema!
     * @param INT $InstitucionalId = Id do registro da informação institucional
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeUpdate($InstitucionalId, array $Data) {
        $this->Id = (int) $InstitucionalId;
        $this->Data = $Data;
        $this->checkData();
        if ($this->getResult()):
            $this->Update();
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

    //Atualiza Informações
    private function Update() {
        $Update = new Update;
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["O registro foi atualizado com sucesso no sistema!", WS_ACCEPT];
            $this->Result = $Update->getResult();
        endif;
    }
}
