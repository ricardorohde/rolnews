<?php
/**
 * SiteVagas.class [ MODEL SITE ]
 * Respnsável por gerenciar os cadastros de VAGAS para sistema de empregos!
 * 
 * @copyright (c) 2015, Gean Marques - CREATIVE WEBSITES
 */
class SiteVagas {
    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'empregos_vagas';
    
    /**
     * <b>Cadastrar Vagas:</b> Envelopa os dados em um array atribuitivo e execute esse método
     * para cadastrar o mesmo no sistema. Validações serão feitas!
     * @param ARRAY $Data = Atribuitivo
     */
    public function ExeCreate(array $Data) {
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
        if ($this->getResult()):
            $this->Create();
        endif;
    }
    
    /**
     * <b>Alterar Vagas:</b> Envelopa os dados em um array atributivo e executa o método
     * para atualizar o mesmo no siste. Validações serão feitas!
     * @param INT $Id = ID do Candidato
     * @param ARRAY $Data = Dados atribuitivos    
     */
    public function ExeUpdate($Id, array $Data) {
        $this->Id = (int) $Id;
        $this->Data = $Data;
        $this->checkData();
        $this->setData();
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
            $this->Error = ["Caro <b>Empregador</b> existe campos em brancos, por favor informe os campo que faltam.", WS_ALERT];
            $this->Result = false;
        else:
            $this->Result = true;
        endif;
    }

    //Seta os Dados
    private function setData() {
        $this->Data['vaga_data'] = Check::Data(date('d/m/Y'));
    }

    //Cadastra Empregador
    private function Create() {
        $Create = new Create;
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["Vaga cadastrada com sucesso!", WS_ACCEPT];
            $this->Result = $Create->getResult();
        endif;
    }

    //Atualiza Empregador
    private function Update() {
        $Update = new Update;
        $Update->ExeUpdate(self::Entity, $this->Data, "WHERE empregador_id = :id", "id={$this->Id}");
        if ($Update->getResult()):
            $this->Error = ["<b>{$this->Data['empregador_fantasia']}</b>, seus dados foram atualizados com sucesso!", WS_ACCEPT];
            $this->Result = $Update->getResult();
        endif;
    }

}
