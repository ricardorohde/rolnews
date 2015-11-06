<?php

/**
 * SiteCandidato.class [ MODEL SITE ]
 * Respnsável por gerenciar os cadastros de CANDIDATOS para sistema de empregos!
 * 
 * @copyright (c) 2015, Gean Marques - CREATIVE WEBSITES
 */
class SiteEmpregador {

    private $Data;
    private $Id;
    private $Error;
    private $Result;

    //Tabela do banco de dados
    const Entity = 'empregos_empregador';

    /**
     * <b>Cadastrar Candidato:</b> Envelopa os dados em um array atribuitivo e execute esse método
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
     * <b>Alterar Empregador:</b> Envelopa os dados em um array atributivo e executa o método
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
        $remove_cep = $this->Data['empregador_cep'];
        $remove_end = $this->Data['empregador_endereco'];
        $remove_num = $this->Data['empregador_numero'];
        $remove_bai = $this->Data['empregador_bairro'];
        $remove_sit = $this->Data['empregador_site'];
        unset($this->Data['empregador_cep'], $this->Data['empregador_endereco'], $this->Data['empregador_numero'], $this->Data['empregador_bairro'], $this->Data['empregador_site']);
        if (in_array('', $this->Data)):
            $this->Error = ["Caro <b>Empregador</b> existe campos em brancos, favor abre o formulário no link <b>Cadastre-se</b> e informe os campo que faltam.", WS_ALERT];
            $this->Result = false;
        elseif (!Check::Email($this->Data['empregador_email'])):
            $this->Error = ["O e-email informado não parece ter um formato válido!", WS_ALERT];
            $this->Result = false;
        else:
            $this->Result = true;
            $this->Data['empregador_cep'] = $remove_cep;
            $this->Data['empregador_endereco'] = $remove_end;
            $this->Data['empregador_numero'] = $remove_num;
            $this->Data['empregador_bairro'] = $remove_bai;
            $this->Data['empregador_site'] = $remove_sit;
        endif;
    }

    //Seta os Dados
    private function setData() {
        if (isset($this->Data['empregador_senha'])):
            $this->Data['empregador_senha'] = md5($this->Data['empregador_senha']);
        endif;
    }

    //Cadastra Empregador
    private function Create() {
        $Create = new Create;
        $Create->ExeCreate(self::Entity, $this->Data);
        if ($Create->getResult()):
            $this->Error = ["Olá Empregador <b>{$this->Data['empregador_razsoc']}</b> seu cadastrado foi realizado com sucesso!<br> Aguarde estamos redirecionando para o painel...", WS_ACCEPT];
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
